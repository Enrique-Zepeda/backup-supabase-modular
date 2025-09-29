


SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE TYPE "public"."friend_request_state" AS ENUM (
    'pendiente',
    'aceptada',
    'rechazada',
    'cancelada'
);


ALTER TYPE "public"."friend_request_state" OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."_normalize_label"("p" "text") RETURNS "text"
    LANGUAGE "sql" IMMUTABLE
    AS $$
  SELECT translate(lower(trim(p)), 'áéíóúÁÉÍÓÚ', 'aeiouaeiou');
$$;


ALTER FUNCTION "public"."_normalize_label"("p" "text") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."attach_owner_after_rutina_insert"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    SET "search_path" TO 'public'
    AS $$
begin
  insert into public."UsuarioRutina"(id_usuario, id_rutina)
  values (public.current_usuario_id(), new.id_rutina)
  on conflict do nothing;
  return new;
end;
$$;


ALTER FUNCTION "public"."attach_owner_after_rutina_insert"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."compute_sensacion_final"("p_id_sesion" bigint) RETURNS "text"
    LANGUAGE "sql" STABLE
    AS $$
  WITH scores AS (
    SELECT rpe_label_to_score(es.rpe) AS s
    FROM "public"."EntrenamientoSets" es
    WHERE es.id_sesion = p_id_sesion
  ),
  agg AS (
    SELECT AVG(s)::numeric AS avg_s
    FROM scores
    WHERE s IS NOT NULL
  )
  SELECT COALESCE(
    rpe_score_to_label(avg_s),
    'Sin sensaciones'
  )
  FROM agg;
$$;


ALTER FUNCTION "public"."compute_sensacion_final"("p_id_sesion" bigint) OWNER TO "postgres";


COMMENT ON FUNCTION "public"."compute_sensacion_final"("p_id_sesion" bigint) IS 'Devuelve la sensación final del entrenamiento a partir del promedio de rpe (texto) de los sets.';



CREATE OR REPLACE FUNCTION "public"."create_rutina_with_user_link"("p_nombre" "text", "p_descripcion" "text" DEFAULT NULL::"text", "p_nivel_recomendado" "text" DEFAULT NULL::"text", "p_objetivo" "text" DEFAULT NULL::"text", "p_duracion_estimada" integer DEFAULT NULL::integer) RETURNS TABLE("id_rutina" integer, "nombre" "text", "descripcion" "text", "nivel_recomendado" "text", "objetivo" "text", "duracion_estimada" integer)
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
declare
  v_new_rutina_id integer;
  v_user_id        integer;
begin
  -- 1) Usuario autenticado
  v_user_id := current_usuario_id();
  if v_user_id is null then
    raise exception 'Usuario no autenticado';
  end if;

  -- 2) Insert en Rutinas (calificar columna en RETURNING)
  insert into "Rutinas"(nombre, descripcion, nivel_recomendado, objetivo, duracion_estimada)
  values (p_nombre, p_descripcion, p_nivel_recomendado, p_objetivo, p_duracion_estimada)
  returning "Rutinas".id_rutina into v_new_rutina_id;

  -- 3) Vincular con UsuarioRutina
  insert into "UsuarioRutina"(id_usuario, id_rutina, privada, activa)
  values (v_user_id, v_new_rutina_id, true, false);

  -- 4) Devolver la rutina creada
  return query
  select r.id_rutina, r.nombre, r.descripcion, r.nivel_recomendado, r.objetivo, r.duracion_estimada
  from "Rutinas" r
  where r.id_rutina = v_new_rutina_id;
end;
$$;


ALTER FUNCTION "public"."create_rutina_with_user_link"("p_nombre" "text", "p_descripcion" "text", "p_nivel_recomendado" "text", "p_objetivo" "text", "p_duracion_estimada" integer) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."create_workout_session"("p_id_rutina" integer, "p_started_at" timestamp with time zone, "p_ended_at" timestamp with time zone, "p_duracion_seg" integer, "p_total_volumen" numeric, "p_sensacion_global" "text", "p_notas" "text", "p_sets" "jsonb") RETURNS bigint
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
declare
  v_id_sesion bigint;
  v_owner uuid := auth.uid();
  v_row jsonb;
begin
  -- Cabecera
  insert into "Entrenamientos"
    (id_rutina, owner_uid, started_at, ended_at, duracion_seg, total_volumen, sensacion_global, notas)
  values
    (p_id_rutina, v_owner, p_started_at, p_ended_at, p_duracion_seg, p_total_volumen, p_sensacion_global, p_notas)
  returning id_sesion into v_id_sesion;

  -- Detalle por set
  for v_row in
    select * from jsonb_array_elements(coalesce(p_sets, '[]'::jsonb))
  loop
    insert into "EntrenamientoSets"
      (id_sesion, id_ejercicio, idx, kg, reps, rpe, done, done_at)
    values
      (
        v_id_sesion,
        (v_row->>'id_ejercicio')::int,
        (v_row->>'idx')::int,
        (v_row->>'kg')::numeric,
        (v_row->>'reps')::int,
        nullif(v_row->>'rpe',''),
        coalesce((v_row->>'done')::boolean, true),
        case when (v_row ? 'done_at') then (v_row->>'done_at')::timestamptz else null end
      );
  end loop;

  return v_id_sesion;
end;
$$;


ALTER FUNCTION "public"."create_workout_session"("p_id_rutina" integer, "p_started_at" timestamp with time zone, "p_ended_at" timestamp with time zone, "p_duracion_seg" integer, "p_total_volumen" numeric, "p_sensacion_global" "text", "p_notas" "text", "p_sets" "jsonb") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."current_usuario_id"() RETURNS integer
    LANGUAGE "sql" STABLE SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
  SELECT u.id_usuario
  FROM public."Usuarios" u
  WHERE u.auth_uid = auth.uid()
  LIMIT 1
$$;


ALTER FUNCTION "public"."current_usuario_id"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."debug_context"() RETURNS "jsonb"
    LANGUAGE "sql" STABLE SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
select jsonb_build_object(
  'db_user', current_user,
  'auth_uid', auth.uid(),
  'jwt_claims', coalesce(current_setting('request.jwt.claims', true), '{}')::jsonb
);
$$;


ALTER FUNCTION "public"."debug_context"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."delete_rutina_owned"("p_id_rutina" integer) RETURNS "void"
    LANGUAGE "plpgsql"
    SET "search_path" TO 'public'
    AS $$
begin
  -- Verificación de propiedad
  if not exists (
    select 1 from public."UsuarioRutina" ur
    where ur.id_rutina = p_id_rutina
      and ur.id_usuario = public.current_usuario_id()
  ) then
    raise exception 'not owner or routine not found' using errcode='42501';
  end if;

  -- Borrado explícito en orden por FKs (aunque ya hay ON DELETE CASCADE)
  delete from public."EjerciciosRutinas" where id_rutina = p_id_rutina;
  delete from public."UsuarioRutina" where id_rutina = p_id_rutina and id_usuario = public.current_usuario_id();
  delete from public."Rutinas" where id_rutina = p_id_rutina;
end;
$$;


ALTER FUNCTION "public"."delete_rutina_owned"("p_id_rutina" integer) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."delete_workout_session"("p_id_sesion" bigint) RETURNS "void"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
begin
  -- borrar sets que pertenecen a la sesión del owner
  delete from public."EntrenamientoSets" s
  using public."Entrenamientos" e
  where s.id_sesion = p_id_sesion
    and e.id_sesion = s.id_sesion
    and e.owner_uid = auth.uid();

  -- borrar la sesión
  delete from public."Entrenamientos" e
  where e.id_sesion = p_id_sesion
    and e.owner_uid = auth.uid();
end;
$$;


ALTER FUNCTION "public"."delete_workout_session"("p_id_sesion" bigint) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."feed_friends_workouts"("p_limit" integer, "p_before" timestamp with time zone DEFAULT NULL::timestamp with time zone) RETURNS TABLE("id_workout" bigint, "id_usuario" integer, "fecha" timestamp with time zone, "sensacion" "text", "nota" "text", "username" "text", "nombre" "text", "url_avatar" "text", "total_series" integer, "total_kg" numeric, "id_rutina" integer, "rutina_nombre" "text")
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
  with me as (
    select public.current_usuario_id() as id_usuario
  ),
  visibles as (
    select e.id_sesion,
           u.id_usuario,
           e.ended_at                                as fecha,
           public.get_sensacion_or_compute(e.id_sesion) as sensacion, -- ← clave
           e.notas                                   as nota,
           u.username,
           u.nombre,
           u.url_avatar,
           e.id_rutina
    from public."Entrenamientos" e
    join public."Usuarios" u on u.auth_uid = e.owner_uid
    join me on true
    where e.ended_at is not null
      and (
        u.id_usuario = me.id_usuario
        or exists (
          select 1
          from public."Amigos" a
          where (a.id_usuario1 = me.id_usuario and a.id_usuario2 = u.id_usuario)
             or (a.id_usuario2 = me.id_usuario and a.id_usuario1 = u.id_usuario)
        )
      )
      and (p_before is null or e.ended_at < p_before)
  ),
  sets_done as (
    select s.id_sesion,
           count(*)::int                                as total_series,
           coalesce(sum(s.kg * s.reps),0)::numeric      as total_kg
    from public."EntrenamientoSets" s
    where coalesce(s.done,false) = true
    group by s.id_sesion
  )
  select
    v.id_sesion                 as id_workout,
    v.id_usuario,
    v.fecha,
    v.sensacion,                -- ← ya no es NULL
    v.nota,
    v.username,
    v.nombre,
    v.url_avatar,
    coalesce(sd.total_series,0) as total_series,
    coalesce(sd.total_kg,0)     as total_kg,
    v.id_rutina,
    r.nombre                    as rutina_nombre
  from visibles v
  left join sets_done sd on sd.id_sesion = v.id_sesion
  left join public."Rutinas" r on r.id_rutina = v.id_rutina
  order by v.fecha desc
  limit greatest(p_limit,1)
$$;


ALTER FUNCTION "public"."feed_friends_workouts"("p_limit" integer, "p_before" timestamp with time zone) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."feed_friends_workouts_v2"("p_limit" integer, "p_before" timestamp with time zone DEFAULT NULL::timestamp with time zone) RETURNS TABLE("id_workout" bigint, "id_usuario" integer, "fecha" timestamp with time zone, "sensacion" "text", "nota" "text", "username" "text", "nombre" "text", "url_avatar" "text", "total_series" integer, "total_kg" numeric, "id_rutina" integer, "rutina_nombre" "text", "duracion_seg" integer)
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
  WITH me AS (
    SELECT public.current_usuario_id() AS id_usuario
  ),
  visibles AS (
    SELECT
      e.id_sesion,
      u.id_usuario,
      e.ended_at AS fecha,
      public.get_sensacion_or_compute(e.id_sesion) AS sensacion,
      e.notas AS nota,
      u.username,
      u.nombre,
      u.url_avatar,
      e.id_rutina,
      e.duracion_seg
    FROM public."Entrenamientos" e
    JOIN public."Usuarios" u ON u.auth_uid = e.owner_uid
    JOIN me ON TRUE
    WHERE e.ended_at IS NOT NULL
      AND (
        u.id_usuario = me.id_usuario
        OR EXISTS (
          SELECT 1
          FROM public."Amigos" a
          WHERE (a.id_usuario1 = me.id_usuario AND a.id_usuario2 = u.id_usuario)
             OR (a.id_usuario2 = me.id_usuario AND a.id_usuario1 = u.id_usuario)
        )
      )
      AND (p_before IS NULL OR e.ended_at < p_before)
  ),
  sets_done AS (
    SELECT
      s.id_sesion,
      count(*)::int AS total_series,
      COALESCE(sum(s.kg * s.reps), 0)::numeric AS total_kg
    FROM public."EntrenamientoSets" s
    WHERE COALESCE(s.done, false) = true
    GROUP BY s.id_sesion
  )
  SELECT
    v.id_sesion             AS id_workout,
    v.id_usuario,
    v.fecha,
    v.sensacion,
    v.nota,
    v.username,
    v.nombre,
    v.url_avatar,
    COALESCE(sd.total_series, 0) AS total_series,
    COALESCE(sd.total_kg, 0)     AS total_kg,
    v.id_rutina,
    r.nombre AS rutina_nombre,
    v.duracion_seg
  FROM visibles v
  LEFT JOIN sets_done sd ON sd.id_sesion = v.id_sesion
  LEFT JOIN public."Rutinas" r ON r.id_rutina = v.id_rutina
  ORDER BY v.fecha DESC
  LIMIT GREATEST(p_limit, 1)
$$;


ALTER FUNCTION "public"."feed_friends_workouts_v2"("p_limit" integer, "p_before" timestamp with time zone) OWNER TO "postgres";


COMMENT ON FUNCTION "public"."feed_friends_workouts_v2"("p_limit" integer, "p_before" timestamp with time zone) IS 'Versión 2 del feed de entrenamientos (propios y amigos). Agrega duracion_seg al final del contrato.';



CREATE OR REPLACE FUNCTION "public"."finalizar_entrenamiento"("p_id_sesion" integer, "p_sensacion" "text") RETURNS "void"
    LANGUAGE "sql"
    AS $$
  UPDATE public."Entrenamientos" e
  SET
    ended_at     = now(),                                -- cierre en servidor
    sensacion_global = p_sensacion,
    duracion_seg = GREATEST(ROUND(EXTRACT(EPOCH FROM (now() - e.started_at)))::int, 0)
  WHERE e.id_sesion = p_id_sesion;
$$;


ALTER FUNCTION "public"."finalizar_entrenamiento"("p_id_sesion" integer, "p_sensacion" "text") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."friend_ids_for"("me" integer) RETURNS TABLE("friend_id" integer)
    LANGUAGE "sql" STABLE
    AS $$
  select case
           when a.id_usuario1 = me then a.id_usuario2
           else a.id_usuario1
         end as friend_id
  from public."Amigos" a
  where me in (a.id_usuario1, a.id_usuario2)
$$;


ALTER FUNCTION "public"."friend_ids_for"("me" integer) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_sensacion_or_compute"("p_id_sesion" bigint) RETURNS "text"
    LANGUAGE "sql" STABLE
    AS $$
  with base as (
    select e.sensacion_global
    from public."Entrenamientos" e
    where e.id_sesion = p_id_sesion
  )
  select coalesce(
           (select sensacion_global from base),
           public.compute_sensacion_final(p_id_sesion)  -- ← devuelve “Fácil/Moderado/.../Sin sensaciones”
         );
$$;


ALTER FUNCTION "public"."get_sensacion_or_compute"("p_id_sesion" bigint) OWNER TO "postgres";


COMMENT ON FUNCTION "public"."get_sensacion_or_compute"("p_id_sesion" bigint) IS 'Devuelve la sensacion_global si existe; si no, la calcula por RPE.';



CREATE OR REPLACE FUNCTION "public"."handle_new_auth_user"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
BEGIN
  INSERT INTO public."Usuarios"(auth_uid, correo, "contraseña", fecha_registro)
  VALUES (NEW.id, NEW.email, 'auth_managed', CURRENT_DATE)
  ON CONFLICT (auth_uid) DO UPDATE
     SET correo = EXCLUDED.correo;
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."handle_new_auth_user"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."is_friend"("u1" integer, "u2" integer) RETURNS boolean
    LANGUAGE "sql" STABLE
    AS $$
  SELECT EXISTS (
    SELECT 1
    FROM public."Amigos" am
    WHERE (am.id_usuario1 = u1 AND am.id_usuario2 = u2)
       OR (am.id_usuario1 = u2 AND am.id_usuario2 = u1)
  );
$$;


ALTER FUNCTION "public"."is_friend"("u1" integer, "u2" integer) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."link_rutina_to_current_user"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
begin
  -- si no hay usuario (sesión anónima), no hace nada; la policy de INSERT ya frenará
  if public.current_usuario_id() is null then
    return NEW;
  end if;

  insert into public."UsuarioRutina"(id_usuario, id_rutina)
  values (public.current_usuario_id(), NEW.id_rutina)
  on conflict do nothing;

  return NEW;
end;
$$;


ALTER FUNCTION "public"."link_rutina_to_current_user"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."normalize_username"("p_username" "text") RETURNS "text"
    LANGUAGE "sql" IMMUTABLE
    AS $$
  SELECT
    CASE
      WHEN p_username IS NULL THEN NULL
      ELSE lower(
        regexp_replace(
          trim(p_username),
          '[^a-z0-9_]+',
          '_',
          'gi'
        )
      )
    END;
$$;


ALTER FUNCTION "public"."normalize_username"("p_username" "text") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."reorder_exercises"("p_id_rutina" integer, "p_pairs" "jsonb") RETURNS "void"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
DECLARE
  _owner_ok boolean;
BEGIN
  -- Verifica propiedad por RLS equivalente
  SELECT EXISTS (
    SELECT 1 FROM public."Rutinas" r
    WHERE r.id_rutina = p_id_rutina AND r.owner_uid = auth.uid()
  ) INTO _owner_ok;

  IF NOT _owner_ok THEN
    RAISE EXCEPTION 'not owner or routine not found' USING errcode='42501';
  END IF;

  -- Normaliza a ordenes densos en una sola transacción
  -- Limpia posibles duplicados de keys en JSON y asegura enteros
  UPDATE public."EjerciciosRutinas" er
  SET orden = (elem->>'orden')::int
  FROM jsonb_array_elements(p_pairs) elem
  WHERE er.id_rutina = p_id_rutina
    AND er.id_ejercicio = (elem->>'id_ejercicio')::int;

END;
$$;


ALTER FUNCTION "public"."reorder_exercises"("p_id_rutina" integer, "p_pairs" "jsonb") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."replace_exercise_sets"("p_id_rutina" integer, "p_id_ejercicio" integer, "p_sets" "jsonb") RETURNS "void"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
DECLARE
  _owner_ok boolean;
BEGIN
  -- dueño de la rutina
  SELECT EXISTS (
    SELECT 1 FROM public."Rutinas" r
    WHERE r.id_rutina = p_id_rutina AND r.owner_uid = auth.uid()
  ) INTO _owner_ok;

  IF NOT _owner_ok THEN
    RAISE EXCEPTION 'not owner or routine not found' USING errcode='42501';
  END IF;

  -- Reemplazo total
  DELETE FROM public."EjerciciosRutinaSets"
   WHERE id_rutina = p_id_rutina AND id_ejercicio = p_id_ejercicio;

  INSERT INTO public."EjerciciosRutinaSets"(id_rutina, id_ejercicio, idx, kg, reps)
  SELECT
    p_id_rutina,
    p_id_ejercicio,
    COALESCE((e->>'idx')::int, rn)          AS idx,
    NULLIF(e->>'kg','')::numeric,
    NULLIF(e->>'reps','')::int
  FROM (
    SELECT e, ROW_NUMBER() OVER () AS rn
    FROM jsonb_array_elements(COALESCE(p_sets, '[]'::jsonb)) AS e
  ) t;

  -- Sincroniza 'series' con la cantidad de sets
  UPDATE public."EjerciciosRutinas" er
  SET series = (SELECT COUNT(*)
                FROM public."EjerciciosRutinaSets" s
                WHERE s.id_rutina = p_id_rutina AND s.id_ejercicio = p_id_ejercicio)
  WHERE er.id_rutina = p_id_rutina AND er.id_ejercicio = p_id_ejercicio;

END;
$$;


ALTER FUNCTION "public"."replace_exercise_sets"("p_id_rutina" integer, "p_id_ejercicio" integer, "p_sets" "jsonb") OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."SolicitudesAmistad" (
    "id_solicitud" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "solicitante_id" integer NOT NULL,
    "destinatario_id" integer NOT NULL,
    "estado" "public"."friend_request_state" DEFAULT 'pendiente'::"public"."friend_request_state" NOT NULL,
    "mensaje" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    CONSTRAINT "chk_sa_not_self" CHECK (("solicitante_id" <> "destinatario_id"))
);


ALTER TABLE "public"."SolicitudesAmistad" OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."request_friend"("destinatario" integer, "p_mensaje" "text" DEFAULT NULL::"text") RETURNS "public"."SolicitudesAmistad"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
  me integer := public.current_usuario_id();
  result public."SolicitudesAmistad";
BEGIN
  IF auth.uid() IS NULL THEN
    RAISE EXCEPTION 'not authenticated';
  END IF;

  IF destinatario = me THEN
    RAISE EXCEPTION 'no puedes enviarte solicitud a ti mismo';
  END IF;

  -- ya son amigos? (usa is_friend(int,int) si existe)
  BEGIN
    IF public.is_friend(me, destinatario) THEN
      RAISE EXCEPTION 'ya sois amigos';
    END IF;
  EXCEPTION WHEN undefined_function THEN
    NULL;
  END;

  INSERT INTO public."SolicitudesAmistad"(solicitante_id, destinatario_id, mensaje)
  VALUES (me, destinatario, p_mensaje)
  RETURNING * INTO result;

  RETURN result;
END$$;


ALTER FUNCTION "public"."request_friend"("destinatario" integer, "p_mensaje" "text") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."respond_friend_request"("p_id" "uuid", "accion" "text") RETURNS "public"."SolicitudesAmistad"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
  me integer := public.current_usuario_id();
  row_sa public."SolicitudesAmistad";
  a integer; b integer;
  a_min integer; a_max integer;
BEGIN
  IF auth.uid() IS NULL THEN
    RAISE EXCEPTION 'not authenticated';
  END IF;

  SELECT * INTO row_sa FROM public."SolicitudesAmistad"
  WHERE id_solicitud = p_id FOR UPDATE;

  IF NOT FOUND THEN
    RAISE EXCEPTION 'solicitud no encontrada';
  END IF;

  IF row_sa.estado <> 'pendiente' THEN
    RAISE EXCEPTION 'solicitud ya procesada';
  END IF;

  IF row_sa.destinatario_id <> me THEN
    RAISE EXCEPTION 'solo el destinatario puede responder';
  END IF;

  IF accion = 'rechazar' THEN
    UPDATE public."SolicitudesAmistad"
    SET estado = 'rechazada'
    WHERE id_solicitud = p_id
    RETURNING * INTO row_sa;
    RETURN row_sa;

  ELSIF accion = 'aceptar' THEN
    UPDATE public."SolicitudesAmistad"
    SET estado = 'aceptada'
    WHERE id_solicitud = p_id
    RETURNING * INTO row_sa;

    a := row_sa.solicitante_id;
    b := row_sa.destinatario_id;
    a_min := LEAST(a,b);
    a_max := GREATEST(a,b);

    -- Inserta la pareja ordenada; evita duplicados incluso invertidos
    INSERT INTO public."Amigos"(id_usuario1, id_usuario2)
    SELECT a_min, a_max
    WHERE NOT EXISTS (
      SELECT 1 FROM public."Amigos"
      WHERE (id_usuario1 = a_min AND id_usuario2 = a_max)
         OR (id_usuario1 = a_max AND id_usuario2 = a_min)
    );

    RETURN row_sa;
  ELSE
    RAISE EXCEPTION 'accion inválida: %', accion;
  END IF;
END$$;


ALTER FUNCTION "public"."respond_friend_request"("p_id" "uuid", "accion" "text") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."rpe_label_to_score"("p" "text") RETURNS integer
    LANGUAGE "sql" IMMUTABLE
    AS $$
  SELECT CASE _normalize_label(p)
    WHEN 'facil'       THEN 1
    WHEN 'moderado'    THEN 2
    WHEN 'dificil'     THEN 3
    WHEN 'muy dificil' THEN 4
    WHEN 'al fallo'    THEN 5
    ELSE NULL
  END;
$$;


ALTER FUNCTION "public"."rpe_label_to_score"("p" "text") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."rpe_score_to_label"("p" numeric) RETURNS "text"
    LANGUAGE "sql" IMMUTABLE
    AS $$
  -- redondeo al más cercano
  WITH s AS (
    SELECT ROUND(p)::int AS n
  )
  SELECT CASE n
    WHEN 1 THEN 'Fácil'
    WHEN 2 THEN 'Moderado'
    WHEN 3 THEN 'Difícil'
    WHEN 4 THEN 'Muy difícil'
    WHEN 5 THEN 'Al fallo'
    ELSE NULL
  END
  FROM s;
$$;


ALTER FUNCTION "public"."rpe_score_to_label"("p" numeric) OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Usuarios" (
    "id_usuario" integer NOT NULL,
    "nombre" character varying(100),
    "correo" character varying(100) NOT NULL,
    "contraseña" character varying(255) DEFAULT 'auth_managed'::character varying NOT NULL,
    "edad" integer,
    "peso" numeric(5,2),
    "altura" numeric(5,2),
    "nivel_experiencia" character varying(20),
    "objetivo" character varying(20),
    "fecha_registro" "date" DEFAULT CURRENT_DATE,
    "auth_uid" "uuid",
    "username" "text",
    "sexo" "text",
    "url_avatar" "text",
    "updated_at" timestamp with time zone DEFAULT "now"(),
    CONSTRAINT "usuarios_nivel_experiencia_check" CHECK ((("nivel_experiencia")::"text" = ANY (ARRAY[('principiante'::character varying)::"text", ('intermedio'::character varying)::"text", ('avanzado'::character varying)::"text"]))),
    CONSTRAINT "usuarios_objetivo_check" CHECK ((("objetivo")::"text" = ANY (ARRAY[('fuerza'::character varying)::"text", ('hipertrofia'::character varying)::"text", ('resistencia'::character varying)::"text"]))),
    CONSTRAINT "usuarios_sexo_check" CHECK ((("sexo" IS NULL) OR ("sexo" = ANY (ARRAY['masculino'::"text", 'femenino'::"text"])))),
    CONSTRAINT "usuarios_username_format_chk" CHECK ((("username" IS NULL) OR ("username" ~ '^[a-z0-9_]{3,20}$'::"text")))
);


ALTER TABLE "public"."Usuarios" OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."save_current_user_profile"("p_username" "text", "p_nombre" "text", "p_edad" integer, "p_peso" numeric, "p_altura" numeric, "p_nivel" "text", "p_objetivo" "text") RETURNS "public"."Usuarios"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
DECLARE
  v_email text;
  v_row public."Usuarios";
BEGIN
  -- Email de la sesión
  SELECT email INTO v_email FROM auth.users WHERE id = auth.uid();

  -- 1) Intentar UPDATE sin tocar correo/auth_uid
  UPDATE public."Usuarios"
  SET
    username = p_username,
    nombre = p_nombre,
    edad = p_edad,
    peso = p_peso,
    altura = p_altura,
    nivel_experiencia = p_nivel,
    objetivo = p_objetivo
  WHERE auth_uid = auth.uid()
  RETURNING * INTO v_row;

  IF NOT FOUND THEN
    -- 2) INSERT si no existe. correo es NOT NULL → exigir email real.
    IF v_email IS NULL THEN
      RAISE EXCEPTION 'No hay email en la sesión; no se puede crear la fila de "Usuarios"'
      USING HINT = 'Inicia sesión con email o crea la fila manualmente.';
    END IF;

    INSERT INTO public."Usuarios" (
      auth_uid, correo, username, nombre, edad, peso, altura, nivel_experiencia, objetivo
    ) VALUES (
      auth.uid(), v_email, p_username, p_nombre, p_edad, p_peso, p_altura, p_nivel, p_objetivo
    )
    RETURNING * INTO v_row;
  END IF;

  RETURN v_row;
END
$$;


ALTER FUNCTION "public"."save_current_user_profile"("p_username" "text", "p_nombre" "text", "p_edad" integer, "p_peso" numeric, "p_altura" numeric, "p_nivel" "text", "p_objetivo" "text") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."save_current_user_profile"("p_username" "text", "p_nombre" "text", "p_edad" integer, "p_peso" numeric, "p_altura" numeric, "p_nivel" "text", "p_objetivo" "text", "p_sexo" "text") RETURNS "public"."Usuarios"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
DECLARE
  v_email text;
  v_row public."Usuarios";
BEGIN
  SELECT email INTO v_email FROM auth.users WHERE id = auth.uid();

  -- Update sin tocar correo/auth_uid
  UPDATE public."Usuarios"
  SET
    username = p_username,
    nombre = p_nombre,
    edad = p_edad,
    peso = p_peso,
    altura = p_altura,
    nivel_experiencia = p_nivel,
    objetivo = p_objetivo,
    sexo = p_sexo
  WHERE auth_uid = auth.uid()
  RETURNING * INTO v_row;

  IF NOT FOUND THEN
    IF v_email IS NULL THEN
      RAISE EXCEPTION 'No hay email en la sesión; no se puede crear la fila de "Usuarios"'
      USING HINT = 'Inicia sesión con email o crea la fila manualmente.';
    END IF;

    INSERT INTO public."Usuarios"(
      auth_uid, correo, username, nombre, edad, peso, altura, nivel_experiencia, objetivo, sexo
    ) VALUES (
      auth.uid(), v_email, p_username, p_nombre, p_edad, p_peso, p_altura, p_nivel, p_objetivo, p_sexo
    )
    RETURNING * INTO v_row;
  END IF;

  RETURN v_row;
END
$$;


ALTER FUNCTION "public"."save_current_user_profile"("p_username" "text", "p_nombre" "text", "p_edad" integer, "p_peso" numeric, "p_altura" numeric, "p_nivel" "text", "p_objetivo" "text", "p_sexo" "text") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."set_er_orden"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  IF NEW.orden IS NULL THEN
    SELECT COALESCE(MAX(orden), 0) + 1
    INTO NEW.orden
    FROM public."EjerciciosRutinas"
    WHERE id_rutina = NEW.id_rutina;
  END IF;
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."set_er_orden"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."set_rutinas_owner"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
BEGIN
  IF TG_OP = 'INSERT' AND NEW.owner_uid IS NULL THEN
    NEW.owner_uid := auth.uid();
  END IF;
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."set_rutinas_owner"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."set_updated_at"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  NEW.updated_at := now();
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."set_updated_at"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."tg_set_updated_at"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  NEW.updated_at := now();
  RETURN NEW;
END$$;


ALTER FUNCTION "public"."tg_set_updated_at"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."trg_normalize_username"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  IF TG_OP = 'INSERT' OR TG_OP = 'UPDATE' THEN
    NEW.username := public.normalize_username(NEW.username);
  END IF;
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."trg_normalize_username"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."update_current_user_avatar"("p_url" "text") RETURNS "public"."Usuarios"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
DECLARE
  v_auth_uid uuid := auth.uid();
  v_row public."Usuarios";
BEGIN
  IF v_auth_uid IS NULL THEN
    RAISE EXCEPTION 'No authenticated user';
  END IF;

  UPDATE public."Usuarios"
  SET url_avatar = p_url,
      updated_at = NOW()
  WHERE auth_uid = v_auth_uid
  RETURNING * INTO v_row;

  IF NOT FOUND THEN
    RAISE EXCEPTION 'User profile not found for auth uid: %', v_auth_uid;
  END IF;

  RETURN v_row;
END;
$$;


ALTER FUNCTION "public"."update_current_user_avatar"("p_url" "text") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."username_is_available"("p_username" "text") RETURNS boolean
    LANGUAGE "sql" STABLE
    AS $$
  SELECT NOT EXISTS (
    SELECT 1
    FROM public."Usuarios" u
    WHERE lower(u.username) = lower(public.normalize_username(p_username))
  );
$$;


ALTER FUNCTION "public"."username_is_available"("p_username" "text") OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Amigos" (
    "id_usuario1" integer NOT NULL,
    "id_usuario2" integer NOT NULL
);


ALTER TABLE "public"."Amigos" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Ejercicios" (
    "id" integer NOT NULL,
    "nombre" character varying(100),
    "grupo_muscular" character varying(50),
    "descripcion" "text",
    "equipamento" character varying,
    "dificultad" character varying,
    "musculos_involucrados" character varying,
    "ejemplo" character varying
);


ALTER TABLE "public"."Ejercicios" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."EjerciciosRutinaSets" (
    "id_rutina" integer NOT NULL,
    "id_ejercicio" integer NOT NULL,
    "idx" integer NOT NULL,
    "kg" numeric(5,2),
    "reps" integer
);


ALTER TABLE "public"."EjerciciosRutinaSets" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."EjerciciosRutinas" (
    "id_rutina" integer NOT NULL,
    "id_ejercicio" integer NOT NULL,
    "series" integer,
    "repeticiones" integer,
    "peso_sugerido" numeric(5,2),
    "orden" integer NOT NULL
);


ALTER TABLE "public"."EjerciciosRutinas" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."EntrenamientoSets" (
    "id_sesion" bigint NOT NULL,
    "id_ejercicio" integer NOT NULL,
    "idx" integer NOT NULL,
    "kg" numeric NOT NULL,
    "reps" integer NOT NULL,
    "rpe" "text",
    "done" boolean DEFAULT true NOT NULL,
    "done_at" timestamp with time zone
);


ALTER TABLE "public"."EntrenamientoSets" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Entrenamientos" (
    "id_sesion" bigint NOT NULL,
    "id_rutina" integer,
    "owner_uid" "uuid" DEFAULT "auth"."uid"() NOT NULL,
    "started_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "ended_at" timestamp with time zone,
    "duracion_seg" integer,
    "total_volumen" numeric,
    "sensacion_global" "text",
    "notas" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."Entrenamientos" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."Entrenamientos_id_sesion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."Entrenamientos_id_sesion_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."Entrenamientos_id_sesion_seq" OWNED BY "public"."Entrenamientos"."id_sesion";



CREATE TABLE IF NOT EXISTS "public"."Medallas" (
    "id_medalla" integer NOT NULL,
    "nombre" character varying(100),
    "descripcion" "text",
    "criterio" character varying(255)
);


ALTER TABLE "public"."Medallas" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."MedallasUsuario" (
    "id_usuario" integer NOT NULL,
    "id_medalla" integer NOT NULL,
    "fecha_obtenida" "date"
);


ALTER TABLE "public"."MedallasUsuario" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Programas" (
    "id" bigint NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "nombre" character varying,
    "descripcion" character varying,
    "nivel_recomendado" character varying
);


ALTER TABLE "public"."Programas" OWNER TO "postgres";


COMMENT ON TABLE "public"."Programas" IS 'Aqui se agruparán varias rutinas para completar un programa';



CREATE TABLE IF NOT EXISTS "public"."ProgramasRutinas" (
    "id" bigint NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "id_programa" bigint,
    "id_rutina" integer,
    "orden" integer,
    "dia_semana" character varying
);


ALTER TABLE "public"."ProgramasRutinas" OWNER TO "postgres";


COMMENT ON TABLE "public"."ProgramasRutinas" IS 'Aqui van todas las rutinas del programa';



ALTER TABLE "public"."ProgramasRutinas" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."ProgramasRutinas_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



ALTER TABLE "public"."Programas" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."Programas_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE IF NOT EXISTS "public"."ProgresoDeUsuario" (
    "id_progreso" integer NOT NULL,
    "id_usuario" integer,
    "fecha" "date",
    "id_ejercicio" integer,
    "series" integer,
    "repeticiones" integer,
    "peso_usado" numeric(5,2),
    "sensacion" character varying(10),
    CONSTRAINT "progresousuario_sensacion_check" CHECK ((("sensacion")::"text" = ANY (ARRAY[('fácil'::character varying)::"text", ('normal'::character varying)::"text", ('difícil'::character varying)::"text"])))
);


ALTER TABLE "public"."ProgresoDeUsuario" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."Rutinas" (
    "id_rutina" integer NOT NULL,
    "nombre" character varying(100),
    "descripcion" "text",
    "nivel_recomendado" character varying(20),
    "objetivo" character varying(20),
    "duracion_estimada" integer,
    "owner_uid" "uuid" DEFAULT "auth"."uid"(),
    CONSTRAINT "rutinas_nivel_recomendado_check" CHECK ((("nivel_recomendado")::"text" = ANY (ARRAY[('principiante'::character varying)::"text", ('intermedio'::character varying)::"text", ('avanzado'::character varying)::"text"]))),
    CONSTRAINT "rutinas_objetivo_check" CHECK ((("objetivo")::"text" = ANY (ARRAY[('fuerza'::character varying)::"text", ('hipertrofia'::character varying)::"text", ('resistencia'::character varying)::"text"])))
);


ALTER TABLE "public"."Rutinas" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."SocialComments" (
    "id_comment" bigint NOT NULL,
    "id_sesion" bigint NOT NULL,
    "author_uid" "uuid" DEFAULT "auth"."uid"() NOT NULL,
    "texto" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone,
    CONSTRAINT "SocialComments_texto_check" CHECK ((("length"("btrim"("texto")) > 0) AND ("length"("texto") <= 1000)))
);


ALTER TABLE "public"."SocialComments" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."SocialComments_id_comment_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."SocialComments_id_comment_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."SocialComments_id_comment_seq" OWNED BY "public"."SocialComments"."id_comment";



CREATE TABLE IF NOT EXISTS "public"."SocialLikes" (
    "id_like" bigint NOT NULL,
    "id_sesion" bigint NOT NULL,
    "author_uid" "uuid" DEFAULT "auth"."uid"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."SocialLikes" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."SocialLikes_id_like_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."SocialLikes_id_like_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."SocialLikes_id_like_seq" OWNED BY "public"."SocialLikes"."id_like";



CREATE TABLE IF NOT EXISTS "public"."UsuarioRutina" (
    "id" bigint NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "id_usuario" integer DEFAULT "public"."current_usuario_id"(),
    "id_rutina" integer,
    "id_programa" bigint,
    "privada" boolean DEFAULT true NOT NULL,
    "activa" boolean DEFAULT false
);


ALTER TABLE "public"."UsuarioRutina" OWNER TO "postgres";


COMMENT ON TABLE "public"."UsuarioRutina" IS 'Relacion entre las rutinas de cada usuario';



ALTER TABLE "public"."UsuarioRutina" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."UsuarioRutina_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE SEQUENCE IF NOT EXISTS "public"."ejercicios_id_ejercicio_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."ejercicios_id_ejercicio_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."ejercicios_id_ejercicio_seq" OWNED BY "public"."Ejercicios"."id";



CREATE TABLE IF NOT EXISTS "public"."feedbackusuario" (
    "id_feedback" integer NOT NULL,
    "id_usuario" integer,
    "id_rutina" integer,
    "fecha" "date",
    "satisfaccion" integer,
    CONSTRAINT "feedbackusuario_satisfaccion_check" CHECK ((("satisfaccion" >= 1) AND ("satisfaccion" <= 5)))
);


ALTER TABLE "public"."feedbackusuario" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."feedbackusuario_id_feedback_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."feedbackusuario_id_feedback_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."feedbackusuario_id_feedback_seq" OWNED BY "public"."feedbackusuario"."id_feedback";



CREATE SEQUENCE IF NOT EXISTS "public"."medallas_id_medalla_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."medallas_id_medalla_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."medallas_id_medalla_seq" OWNED BY "public"."Medallas"."id_medalla";



CREATE SEQUENCE IF NOT EXISTS "public"."progresousuario_id_progreso_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."progresousuario_id_progreso_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."progresousuario_id_progreso_seq" OWNED BY "public"."ProgresoDeUsuario"."id_progreso";



CREATE TABLE IF NOT EXISTS "public"."recomendacionesia" (
    "id_recomendacion" integer NOT NULL,
    "id_usuario" integer,
    "fecha" "date",
    "rutina_recomendada" integer,
    "razon" "text"
);


ALTER TABLE "public"."recomendacionesia" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."recomendacionesia_id_recomendacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."recomendacionesia_id_recomendacion_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."recomendacionesia_id_recomendacion_seq" OWNED BY "public"."recomendacionesia"."id_recomendacion";



CREATE SEQUENCE IF NOT EXISTS "public"."rutinas_id_rutina_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."rutinas_id_rutina_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."rutinas_id_rutina_seq" OWNED BY "public"."Rutinas"."id_rutina";



CREATE SEQUENCE IF NOT EXISTS "public"."usuarios_id_usuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."usuarios_id_usuario_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."usuarios_id_usuario_seq" OWNED BY "public"."Usuarios"."id_usuario";



CREATE OR REPLACE VIEW "public"."v_finished_workouts" AS
 SELECT "e"."id_sesion",
    "e"."id_rutina",
    "e"."owner_uid",
    "e"."started_at",
    "e"."ended_at",
    ( SELECT ("count"(*))::integer AS "count"
           FROM "public"."EntrenamientoSets" "s"
          WHERE ("s"."id_sesion" = "e"."id_sesion")) AS "total_sets",
    "e"."total_volumen" AS "total_volume",
    COALESCE("r"."nombre", 'Entrenamiento'::character varying) AS "titulo",
    "u"."username",
    "u"."url_avatar",
    COALESCE(( SELECT "jsonb_agg"("jsonb_build_object"('id', "x"."id_ejercicio", 'nombre', "x"."nombre", 'grupo_muscular', "x"."grupo_muscular", 'equipamento', "x"."equipamento", 'ejemplo', "x"."ejemplo", 'sets_done', "x"."sets_done", 'volume', "x"."volume") ORDER BY "x"."sets_done" DESC, "x"."nombre") AS "jsonb_agg"
           FROM ( SELECT "s"."id_ejercicio",
                    "ej"."nombre",
                    "ej"."grupo_muscular",
                    "ej"."equipamento",
                    "ej"."ejemplo",
                    ("count"(*))::integer AS "sets_done",
                    COALESCE("sum"(("s"."kg" * ("s"."reps")::numeric)), NULL::numeric) AS "volume"
                   FROM ("public"."EntrenamientoSets" "s"
                     JOIN "public"."Ejercicios" "ej" ON (("ej"."id" = "s"."id_ejercicio")))
                  WHERE ("s"."id_sesion" = "e"."id_sesion")
                  GROUP BY "s"."id_ejercicio", "ej"."nombre", "ej"."grupo_muscular", "ej"."equipamento", "ej"."ejemplo") "x"), '[]'::"jsonb") AS "ejercicios",
    "e"."duracion_seg"
   FROM (("public"."Entrenamientos" "e"
     LEFT JOIN "public"."Rutinas" "r" ON (("r"."id_rutina" = "e"."id_rutina")))
     JOIN "public"."Usuarios" "u" ON (("u"."auth_uid" = "e"."owner_uid")))
  WHERE (("e"."ended_at" IS NOT NULL) AND ("e"."owner_uid" = "auth"."uid"()));


ALTER VIEW "public"."v_finished_workouts" OWNER TO "postgres";


COMMENT ON VIEW "public"."v_finished_workouts" IS 'Entrenamientos finalizados del usuario actual con username/avatar, ejercicios y duracion_seg.';



CREATE OR REPLACE VIEW "public"."v_finished_workouts_with_label" AS
 SELECT "v"."id_sesion",
    "v"."id_rutina",
    "v"."owner_uid",
    "v"."started_at",
    "v"."ended_at",
    "v"."total_sets",
    "v"."total_volume",
    "v"."titulo",
    "v"."username",
    "v"."url_avatar",
    "v"."ejercicios",
    COALESCE("e"."sensacion_global", "public"."compute_sensacion_final"("e"."id_sesion")) AS "sensacion_final",
    "v"."duracion_seg"
   FROM ("public"."v_finished_workouts" "v"
     JOIN "public"."Entrenamientos" "e" ON (("e"."id_sesion" = "v"."id_sesion")));


ALTER VIEW "public"."v_finished_workouts_with_label" OWNER TO "postgres";


COMMENT ON VIEW "public"."v_finished_workouts_with_label" IS 'v_finished_workouts + sensacion_final (texto), con duracion_seg como última columna.';



ALTER TABLE ONLY "public"."Ejercicios" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."ejercicios_id_ejercicio_seq"'::"regclass");



ALTER TABLE ONLY "public"."Entrenamientos" ALTER COLUMN "id_sesion" SET DEFAULT "nextval"('"public"."Entrenamientos_id_sesion_seq"'::"regclass");



ALTER TABLE ONLY "public"."Medallas" ALTER COLUMN "id_medalla" SET DEFAULT "nextval"('"public"."medallas_id_medalla_seq"'::"regclass");



ALTER TABLE ONLY "public"."ProgresoDeUsuario" ALTER COLUMN "id_progreso" SET DEFAULT "nextval"('"public"."progresousuario_id_progreso_seq"'::"regclass");



ALTER TABLE ONLY "public"."Rutinas" ALTER COLUMN "id_rutina" SET DEFAULT "nextval"('"public"."rutinas_id_rutina_seq"'::"regclass");



ALTER TABLE ONLY "public"."SocialComments" ALTER COLUMN "id_comment" SET DEFAULT "nextval"('"public"."SocialComments_id_comment_seq"'::"regclass");



ALTER TABLE ONLY "public"."SocialLikes" ALTER COLUMN "id_like" SET DEFAULT "nextval"('"public"."SocialLikes_id_like_seq"'::"regclass");



ALTER TABLE ONLY "public"."Usuarios" ALTER COLUMN "id_usuario" SET DEFAULT "nextval"('"public"."usuarios_id_usuario_seq"'::"regclass");



ALTER TABLE ONLY "public"."feedbackusuario" ALTER COLUMN "id_feedback" SET DEFAULT "nextval"('"public"."feedbackusuario_id_feedback_seq"'::"regclass");



ALTER TABLE ONLY "public"."recomendacionesia" ALTER COLUMN "id_recomendacion" SET DEFAULT "nextval"('"public"."recomendacionesia_id_recomendacion_seq"'::"regclass");



ALTER TABLE ONLY "public"."EjerciciosRutinaSets"
    ADD CONSTRAINT "EjerciciosRutinaSets_pkey" PRIMARY KEY ("id_rutina", "id_ejercicio", "idx");



ALTER TABLE ONLY "public"."EntrenamientoSets"
    ADD CONSTRAINT "EntrenamientoSets_pkey" PRIMARY KEY ("id_sesion", "id_ejercicio", "idx");



ALTER TABLE ONLY "public"."Entrenamientos"
    ADD CONSTRAINT "Entrenamientos_pkey" PRIMARY KEY ("id_sesion");



ALTER TABLE ONLY "public"."ProgramasRutinas"
    ADD CONSTRAINT "ProgramasRutinas_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Programas"
    ADD CONSTRAINT "Programas_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."SocialComments"
    ADD CONSTRAINT "SocialComments_pkey" PRIMARY KEY ("id_comment");



ALTER TABLE ONLY "public"."SocialLikes"
    ADD CONSTRAINT "SocialLikes_id_sesion_author_uid_key" UNIQUE ("id_sesion", "author_uid");



ALTER TABLE ONLY "public"."SocialLikes"
    ADD CONSTRAINT "SocialLikes_pkey" PRIMARY KEY ("id_like");



ALTER TABLE ONLY "public"."SolicitudesAmistad"
    ADD CONSTRAINT "SolicitudesAmistad_pkey" PRIMARY KEY ("id_solicitud");



ALTER TABLE ONLY "public"."UsuarioRutina"
    ADD CONSTRAINT "UsuarioRutina_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."Usuarios"
    ADD CONSTRAINT "Usuarios_auth_uid_key" UNIQUE ("auth_uid");



ALTER TABLE ONLY "public"."Amigos"
    ADD CONSTRAINT "amigos_pkey" PRIMARY KEY ("id_usuario1", "id_usuario2");



ALTER TABLE ONLY "public"."Ejercicios"
    ADD CONSTRAINT "ejercicios_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."EjerciciosRutinas"
    ADD CONSTRAINT "ejerciciosporrutina_pkey" PRIMARY KEY ("id_rutina", "id_ejercicio");



ALTER TABLE ONLY "public"."feedbackusuario"
    ADD CONSTRAINT "feedbackusuario_pkey" PRIMARY KEY ("id_feedback");



ALTER TABLE ONLY "public"."Medallas"
    ADD CONSTRAINT "medallas_pkey" PRIMARY KEY ("id_medalla");



ALTER TABLE ONLY "public"."MedallasUsuario"
    ADD CONSTRAINT "medallasporusuario_pkey" PRIMARY KEY ("id_usuario", "id_medalla");



ALTER TABLE ONLY "public"."ProgresoDeUsuario"
    ADD CONSTRAINT "progresousuario_pkey" PRIMARY KEY ("id_progreso");



ALTER TABLE ONLY "public"."recomendacionesia"
    ADD CONSTRAINT "recomendacionesia_pkey" PRIMARY KEY ("id_recomendacion");



ALTER TABLE ONLY "public"."Rutinas"
    ADD CONSTRAINT "rutinas_pkey" PRIMARY KEY ("id_rutina");



ALTER TABLE ONLY "public"."Usuarios"
    ADD CONSTRAINT "usuarios_correo_key" UNIQUE ("correo");



ALTER TABLE ONLY "public"."Usuarios"
    ADD CONSTRAINT "usuarios_pkey" PRIMARY KEY ("id_usuario");



CREATE INDEX "er_sets_by_pair" ON "public"."EjerciciosRutinaSets" USING "btree" ("id_rutina", "id_ejercicio");



CREATE INDEX "idx_ent_owner_ended" ON "public"."Entrenamientos" USING "btree" ("owner_uid", "ended_at" DESC);



CREATE INDEX "idx_entrenamientos_owner_started" ON "public"."Entrenamientos" USING "btree" ("owner_uid", "started_at" DESC);



CREATE INDEX "idx_esets_sesion" ON "public"."EntrenamientoSets" USING "btree" ("id_sesion");



CREATE INDEX "idx_sa_created_at" ON "public"."SolicitudesAmistad" USING "btree" ("created_at" DESC);



CREATE INDEX "idx_sa_dest_estado" ON "public"."SolicitudesAmistad" USING "btree" ("destinatario_id", "estado");



CREATE INDEX "idx_sa_sol_estado" ON "public"."SolicitudesAmistad" USING "btree" ("solicitante_id", "estado");



CREATE UNIQUE INDEX "idx_ur_unique" ON "public"."UsuarioRutina" USING "btree" ("id_usuario", "id_rutina");



CREATE INDEX "socialcomments_by_author" ON "public"."SocialComments" USING "btree" ("author_uid");



CREATE INDEX "socialcomments_by_sesion_created" ON "public"."SocialComments" USING "btree" ("id_sesion", "created_at" DESC);



CREATE INDEX "sociallikes_by_author" ON "public"."SocialLikes" USING "btree" ("author_uid");



CREATE INDEX "sociallikes_by_sesion" ON "public"."SocialLikes" USING "btree" ("id_sesion");



CREATE UNIQUE INDEX "uniq_amigos_pair" ON "public"."Amigos" USING "btree" (LEAST("id_usuario1", "id_usuario2"), GREATEST("id_usuario1", "id_usuario2"));



CREATE UNIQUE INDEX "uniq_sa_pair_pending" ON "public"."SolicitudesAmistad" USING "btree" (LEAST("solicitante_id", "destinatario_id"), GREATEST("solicitante_id", "destinatario_id")) WHERE ("estado" = 'pendiente'::"public"."friend_request_state");



CREATE UNIQUE INDEX "usuarios_auth_uid_uniq" ON "public"."Usuarios" USING "btree" ("auth_uid");



CREATE INDEX "usuarios_username_lower_idx" ON "public"."Usuarios" USING "btree" ("lower"("username"));



CREATE UNIQUE INDEX "usuarios_username_lower_uniq" ON "public"."Usuarios" USING "btree" ("lower"("username")) WHERE ("username" IS NOT NULL);



CREATE OR REPLACE TRIGGER "before_normalize_username" BEFORE INSERT OR UPDATE OF "username" ON "public"."Usuarios" FOR EACH ROW EXECUTE FUNCTION "public"."trg_normalize_username"();



CREATE OR REPLACE TRIGGER "set_updated_at_socialcomments" BEFORE UPDATE ON "public"."SocialComments" FOR EACH ROW EXECUTE FUNCTION "public"."set_updated_at"();



CREATE OR REPLACE TRIGGER "trg_er_set_orden" BEFORE INSERT ON "public"."EjerciciosRutinas" FOR EACH ROW EXECUTE FUNCTION "public"."set_er_orden"();



CREATE OR REPLACE TRIGGER "trg_link_rutina_owner" AFTER INSERT ON "public"."Rutinas" FOR EACH ROW EXECUTE FUNCTION "public"."link_rutina_to_current_user"();



CREATE OR REPLACE TRIGGER "trg_rutinas_after_insert" AFTER INSERT ON "public"."Rutinas" FOR EACH ROW EXECUTE FUNCTION "public"."attach_owner_after_rutina_insert"();



CREATE OR REPLACE TRIGGER "trg_rutinas_set_owner" BEFORE INSERT ON "public"."Rutinas" FOR EACH ROW EXECUTE FUNCTION "public"."set_rutinas_owner"();



CREATE OR REPLACE TRIGGER "trg_sa_set_updated" BEFORE UPDATE ON "public"."SolicitudesAmistad" FOR EACH ROW EXECUTE FUNCTION "public"."tg_set_updated_at"();



ALTER TABLE ONLY "public"."EntrenamientoSets"
    ADD CONSTRAINT "EntrenamientoSets_id_ejercicio_fkey" FOREIGN KEY ("id_ejercicio") REFERENCES "public"."Ejercicios"("id");



ALTER TABLE ONLY "public"."EntrenamientoSets"
    ADD CONSTRAINT "EntrenamientoSets_id_sesion_fkey" FOREIGN KEY ("id_sesion") REFERENCES "public"."Entrenamientos"("id_sesion") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."Entrenamientos"
    ADD CONSTRAINT "Entrenamientos_id_rutina_fkey" FOREIGN KEY ("id_rutina") REFERENCES "public"."Rutinas"("id_rutina") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."ProgramasRutinas"
    ADD CONSTRAINT "ProgramasRutinas_id_programa_fkey" FOREIGN KEY ("id_programa") REFERENCES "public"."Programas"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."ProgramasRutinas"
    ADD CONSTRAINT "ProgramasRutinas_id_rutina_fkey" FOREIGN KEY ("id_rutina") REFERENCES "public"."Rutinas"("id_rutina") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."ProgresoDeUsuario"
    ADD CONSTRAINT "ProgresoDeUsuario_id_ejercicio_fkey" FOREIGN KEY ("id_ejercicio") REFERENCES "public"."Ejercicios"("id");



ALTER TABLE ONLY "public"."SocialComments"
    ADD CONSTRAINT "SocialComments_id_sesion_fkey" FOREIGN KEY ("id_sesion") REFERENCES "public"."Entrenamientos"("id_sesion") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."SocialLikes"
    ADD CONSTRAINT "SocialLikes_id_sesion_fkey" FOREIGN KEY ("id_sesion") REFERENCES "public"."Entrenamientos"("id_sesion") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."SolicitudesAmistad"
    ADD CONSTRAINT "SolicitudesAmistad_destinatario_id_fkey" FOREIGN KEY ("destinatario_id") REFERENCES "public"."Usuarios"("id_usuario") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."SolicitudesAmistad"
    ADD CONSTRAINT "SolicitudesAmistad_solicitante_id_fkey" FOREIGN KEY ("solicitante_id") REFERENCES "public"."Usuarios"("id_usuario") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."UsuarioRutina"
    ADD CONSTRAINT "UsuarioRutina_id_programa_fkey" FOREIGN KEY ("id_programa") REFERENCES "public"."Programas"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."UsuarioRutina"
    ADD CONSTRAINT "UsuarioRutina_id_ruitna_fkey" FOREIGN KEY ("id_rutina") REFERENCES "public"."Rutinas"("id_rutina") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."UsuarioRutina"
    ADD CONSTRAINT "UsuarioRutina_id_usuario_fkey" FOREIGN KEY ("id_usuario") REFERENCES "public"."Usuarios"("id_usuario") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."Amigos"
    ADD CONSTRAINT "amigos_id_usuario1_fkey" FOREIGN KEY ("id_usuario1") REFERENCES "public"."Usuarios"("id_usuario");



ALTER TABLE ONLY "public"."Amigos"
    ADD CONSTRAINT "amigos_id_usuario2_fkey" FOREIGN KEY ("id_usuario2") REFERENCES "public"."Usuarios"("id_usuario");



ALTER TABLE ONLY "public"."EjerciciosRutinas"
    ADD CONSTRAINT "ejerciciosporrutina_id_ejercicio_fkey" FOREIGN KEY ("id_ejercicio") REFERENCES "public"."Ejercicios"("id");



ALTER TABLE ONLY "public"."EjerciciosRutinas"
    ADD CONSTRAINT "ejerciciosporrutina_id_rutina_fkey" FOREIGN KEY ("id_rutina") REFERENCES "public"."Rutinas"("id_rutina") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."feedbackusuario"
    ADD CONSTRAINT "feedbackusuario_id_rutina_fkey" FOREIGN KEY ("id_rutina") REFERENCES "public"."Rutinas"("id_rutina");



ALTER TABLE ONLY "public"."feedbackusuario"
    ADD CONSTRAINT "feedbackusuario_id_usuario_fkey" FOREIGN KEY ("id_usuario") REFERENCES "public"."Usuarios"("id_usuario");



ALTER TABLE ONLY "public"."EjerciciosRutinaSets"
    ADD CONSTRAINT "fk_er_pair" FOREIGN KEY ("id_rutina", "id_ejercicio") REFERENCES "public"."EjerciciosRutinas"("id_rutina", "id_ejercicio") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."MedallasUsuario"
    ADD CONSTRAINT "medallasporusuario_id_medalla_fkey" FOREIGN KEY ("id_medalla") REFERENCES "public"."Medallas"("id_medalla");



ALTER TABLE ONLY "public"."MedallasUsuario"
    ADD CONSTRAINT "medallasporusuario_id_usuario_fkey" FOREIGN KEY ("id_usuario") REFERENCES "public"."Usuarios"("id_usuario");



ALTER TABLE ONLY "public"."ProgresoDeUsuario"
    ADD CONSTRAINT "progresousuario_id_usuario_fkey" FOREIGN KEY ("id_usuario") REFERENCES "public"."Usuarios"("id_usuario");



ALTER TABLE ONLY "public"."recomendacionesia"
    ADD CONSTRAINT "recomendacionesia_id_usuario_fkey" FOREIGN KEY ("id_usuario") REFERENCES "public"."Usuarios"("id_usuario");



ALTER TABLE ONLY "public"."recomendacionesia"
    ADD CONSTRAINT "recomendacionesia_rutina_recomendada_fkey" FOREIGN KEY ("rutina_recomendada") REFERENCES "public"."Rutinas"("id_rutina");



ALTER TABLE ONLY "public"."Usuarios"
    ADD CONSTRAINT "usuarios_auth_uid_fkey" FOREIGN KEY ("auth_uid") REFERENCES "auth"."users"("id") ON DELETE CASCADE;



ALTER TABLE "public"."EjerciciosRutinaSets" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."EjerciciosRutinas" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."EntrenamientoSets" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."Entrenamientos" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."Programas" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."ProgramasRutinas" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."Rutinas" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."SocialComments" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."SocialLikes" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."SolicitudesAmistad" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."UsuarioRutina" ENABLE ROW LEVEL SECURITY;


CREATE POLICY "ent_delete_owner" ON "public"."Entrenamientos" FOR DELETE USING (("owner_uid" = "auth"."uid"()));



CREATE POLICY "ent_insert_owner" ON "public"."Entrenamientos" FOR INSERT WITH CHECK (("owner_uid" = "auth"."uid"()));



CREATE POLICY "ent_select_owner" ON "public"."Entrenamientos" FOR SELECT USING (("owner_uid" = "auth"."uid"()));



CREATE POLICY "ent_select_owner_or_friend" ON "public"."Entrenamientos" FOR SELECT TO "authenticated" USING ((("owner_uid" = "auth"."uid"()) OR (EXISTS ( SELECT 1
   FROM "public"."Usuarios" "u"
  WHERE (("u"."auth_uid" = "Entrenamientos"."owner_uid") AND "public"."is_friend"("u"."id_usuario", "public"."current_usuario_id"()))))));



CREATE POLICY "ent_update_owner" ON "public"."Entrenamientos" FOR UPDATE USING (("owner_uid" = "auth"."uid"()));



CREATE POLICY "er_cud_owner" ON "public"."EjerciciosRutinas" TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."Rutinas" "r"
  WHERE (("r"."id_rutina" = "EjerciciosRutinas"."id_rutina") AND ("r"."owner_uid" = "auth"."uid"()))))) WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."Rutinas" "r"
  WHERE (("r"."id_rutina" = "EjerciciosRutinas"."id_rutina") AND ("r"."owner_uid" = "auth"."uid"())))));



CREATE POLICY "er_select_owner_or_friends" ON "public"."EjerciciosRutinas" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM ("public"."Rutinas" "r"
     JOIN "public"."Usuarios" "u_owner" ON (("u_owner"."auth_uid" = "r"."owner_uid")))
  WHERE (("r"."id_rutina" = "EjerciciosRutinas"."id_rutina") AND (("r"."owner_uid" = "auth"."uid"()) OR "public"."is_friend"("u_owner"."id_usuario", "public"."current_usuario_id"()))))));



CREATE POLICY "ers_cud_owner" ON "public"."EjerciciosRutinaSets" TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."Rutinas" "r"
  WHERE (("r"."id_rutina" = "EjerciciosRutinaSets"."id_rutina") AND ("r"."owner_uid" = "auth"."uid"()))))) WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."Rutinas" "r"
  WHERE (("r"."id_rutina" = "EjerciciosRutinaSets"."id_rutina") AND ("r"."owner_uid" = "auth"."uid"())))));



CREATE POLICY "ers_select_owner" ON "public"."EjerciciosRutinaSets" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."Rutinas" "r"
  WHERE (("r"."id_rutina" = "EjerciciosRutinaSets"."id_rutina") AND ("r"."owner_uid" = "auth"."uid"())))));



CREATE POLICY "esets_owner" ON "public"."EntrenamientoSets" USING ((EXISTS ( SELECT 1
   FROM "public"."Entrenamientos" "e"
  WHERE (("e"."id_sesion" = "EntrenamientoSets"."id_sesion") AND ("e"."owner_uid" = "auth"."uid"()))))) WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."Entrenamientos" "e"
  WHERE (("e"."id_sesion" = "EntrenamientoSets"."id_sesion") AND ("e"."owner_uid" = "auth"."uid"())))));



CREATE POLICY "esets_select_owner_or_friend" ON "public"."EntrenamientoSets" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM ("public"."Entrenamientos" "e"
     JOIN "public"."Usuarios" "u" ON (("u"."auth_uid" = "e"."owner_uid")))
  WHERE (("e"."id_sesion" = "EntrenamientoSets"."id_sesion") AND (("e"."owner_uid" = "auth"."uid"()) OR "public"."is_friend"("u"."id_usuario", "public"."current_usuario_id"()))))));



CREATE POLICY "rutinas_delete_owner" ON "public"."Rutinas" FOR DELETE TO "authenticated" USING (("owner_uid" = "auth"."uid"()));



CREATE POLICY "rutinas_insert_owner" ON "public"."Rutinas" FOR INSERT TO "authenticated" WITH CHECK (("owner_uid" = "auth"."uid"()));



CREATE POLICY "rutinas_select_owner" ON "public"."Rutinas" FOR SELECT TO "authenticated" USING (("owner_uid" = "auth"."uid"()));



CREATE POLICY "rutinas_update_owner" ON "public"."Rutinas" FOR UPDATE TO "authenticated" USING (("owner_uid" = "auth"."uid"())) WITH CHECK (("owner_uid" = "auth"."uid"()));



CREATE POLICY "sa_insert_solicitante" ON "public"."SolicitudesAmistad" FOR INSERT WITH CHECK ((("auth"."uid"() IS NOT NULL) AND ("solicitante_id" = "public"."current_usuario_id"()) AND ("destinatario_id" <> "public"."current_usuario_id"())));



CREATE POLICY "sa_select_participants" ON "public"."SolicitudesAmistad" FOR SELECT USING ((("auth"."uid"() IS NOT NULL) AND (("solicitante_id" = "public"."current_usuario_id"()) OR ("destinatario_id" = "public"."current_usuario_id"()))));



CREATE POLICY "sa_update_cancel_by_solicitante" ON "public"."SolicitudesAmistad" FOR UPDATE USING ((("auth"."uid"() IS NOT NULL) AND ("solicitante_id" = "public"."current_usuario_id"()) AND ("estado" = 'pendiente'::"public"."friend_request_state"))) WITH CHECK (("estado" = 'cancelada'::"public"."friend_request_state"));



CREATE POLICY "sa_update_respond_by_destinatario" ON "public"."SolicitudesAmistad" FOR UPDATE USING ((("auth"."uid"() IS NOT NULL) AND ("destinatario_id" = "public"."current_usuario_id"()) AND ("estado" = 'pendiente'::"public"."friend_request_state"))) WITH CHECK (("estado" = ANY (ARRAY['aceptada'::"public"."friend_request_state", 'rechazada'::"public"."friend_request_state"])));



CREATE POLICY "socialcomments_delete" ON "public"."SocialComments" FOR DELETE USING ((("author_uid" = "auth"."uid"()) OR (EXISTS ( SELECT 1
   FROM "public"."Entrenamientos" "e"
  WHERE (("e"."id_sesion" = "SocialComments"."id_sesion") AND ("e"."owner_uid" = "auth"."uid"()))))));



CREATE POLICY "socialcomments_insert" ON "public"."SocialComments" FOR INSERT TO "authenticated" WITH CHECK ((("author_uid" = "auth"."uid"()) AND (EXISTS ( SELECT 1
   FROM ("public"."Entrenamientos" "e"
     JOIN "public"."Usuarios" "u_owner" ON (("u_owner"."auth_uid" = "e"."owner_uid")))
  WHERE (("e"."id_sesion" = "SocialComments"."id_sesion") AND (("e"."owner_uid" = "auth"."uid"()) OR "public"."is_friend"("u_owner"."id_usuario", "public"."current_usuario_id"())))))));



CREATE POLICY "socialcomments_select" ON "public"."SocialComments" FOR SELECT USING ((("author_uid" = "auth"."uid"()) OR (EXISTS ( SELECT 1
   FROM ("public"."Entrenamientos" "e"
     JOIN "public"."Usuarios" "u_owner" ON (("u_owner"."auth_uid" = "e"."owner_uid")))
  WHERE (("e"."id_sesion" = "SocialComments"."id_sesion") AND (("e"."owner_uid" = "auth"."uid"()) OR "public"."is_friend"("u_owner"."id_usuario", "public"."current_usuario_id"())))))));



CREATE POLICY "socialcomments_update" ON "public"."SocialComments" FOR UPDATE USING (("author_uid" = "auth"."uid"())) WITH CHECK (("author_uid" = "auth"."uid"()));



CREATE POLICY "sociallikes_delete" ON "public"."SocialLikes" FOR DELETE USING ((("author_uid" = "auth"."uid"()) OR (EXISTS ( SELECT 1
   FROM "public"."Entrenamientos" "e"
  WHERE (("e"."id_sesion" = "SocialLikes"."id_sesion") AND ("e"."owner_uid" = "auth"."uid"()))))));



CREATE POLICY "sociallikes_insert" ON "public"."SocialLikes" FOR INSERT TO "authenticated" WITH CHECK ((("author_uid" = "auth"."uid"()) AND (EXISTS ( SELECT 1
   FROM ("public"."Entrenamientos" "e"
     JOIN "public"."Usuarios" "u_owner" ON (("u_owner"."auth_uid" = "e"."owner_uid")))
  WHERE (("e"."id_sesion" = "SocialLikes"."id_sesion") AND (("e"."owner_uid" = "auth"."uid"()) OR "public"."is_friend"("u_owner"."id_usuario", "public"."current_usuario_id"())))))));



CREATE POLICY "sociallikes_select" ON "public"."SocialLikes" FOR SELECT USING ((EXISTS ( SELECT 1
   FROM ("public"."Entrenamientos" "e"
     JOIN "public"."Usuarios" "u_owner" ON (("u_owner"."auth_uid" = "e"."owner_uid")))
  WHERE (("e"."id_sesion" = "SocialLikes"."id_sesion") AND (("e"."owner_uid" = "auth"."uid"()) OR "public"."is_friend"("u_owner"."id_usuario", "public"."current_usuario_id"()))))));



CREATE POLICY "ur_cud_self" ON "public"."UsuarioRutina" TO "authenticated" USING (("id_usuario" = "public"."current_usuario_id"())) WITH CHECK (("id_usuario" = "public"."current_usuario_id"()));



CREATE POLICY "ur_select_owner_or_friend" ON "public"."UsuarioRutina" FOR SELECT TO "authenticated" USING ((("id_usuario" = "public"."current_usuario_id"()) OR "public"."is_friend"("id_usuario", "public"."current_usuario_id"())));





ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";






ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."SocialComments";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."SocialLikes";



GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";

























































































































































GRANT ALL ON FUNCTION "public"."_normalize_label"("p" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."_normalize_label"("p" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."_normalize_label"("p" "text") TO "service_role";



GRANT ALL ON FUNCTION "public"."attach_owner_after_rutina_insert"() TO "anon";
GRANT ALL ON FUNCTION "public"."attach_owner_after_rutina_insert"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."attach_owner_after_rutina_insert"() TO "service_role";



GRANT ALL ON FUNCTION "public"."compute_sensacion_final"("p_id_sesion" bigint) TO "anon";
GRANT ALL ON FUNCTION "public"."compute_sensacion_final"("p_id_sesion" bigint) TO "authenticated";
GRANT ALL ON FUNCTION "public"."compute_sensacion_final"("p_id_sesion" bigint) TO "service_role";



GRANT ALL ON FUNCTION "public"."create_rutina_with_user_link"("p_nombre" "text", "p_descripcion" "text", "p_nivel_recomendado" "text", "p_objetivo" "text", "p_duracion_estimada" integer) TO "anon";
GRANT ALL ON FUNCTION "public"."create_rutina_with_user_link"("p_nombre" "text", "p_descripcion" "text", "p_nivel_recomendado" "text", "p_objetivo" "text", "p_duracion_estimada" integer) TO "authenticated";
GRANT ALL ON FUNCTION "public"."create_rutina_with_user_link"("p_nombre" "text", "p_descripcion" "text", "p_nivel_recomendado" "text", "p_objetivo" "text", "p_duracion_estimada" integer) TO "service_role";



GRANT ALL ON FUNCTION "public"."create_workout_session"("p_id_rutina" integer, "p_started_at" timestamp with time zone, "p_ended_at" timestamp with time zone, "p_duracion_seg" integer, "p_total_volumen" numeric, "p_sensacion_global" "text", "p_notas" "text", "p_sets" "jsonb") TO "anon";
GRANT ALL ON FUNCTION "public"."create_workout_session"("p_id_rutina" integer, "p_started_at" timestamp with time zone, "p_ended_at" timestamp with time zone, "p_duracion_seg" integer, "p_total_volumen" numeric, "p_sensacion_global" "text", "p_notas" "text", "p_sets" "jsonb") TO "authenticated";
GRANT ALL ON FUNCTION "public"."create_workout_session"("p_id_rutina" integer, "p_started_at" timestamp with time zone, "p_ended_at" timestamp with time zone, "p_duracion_seg" integer, "p_total_volumen" numeric, "p_sensacion_global" "text", "p_notas" "text", "p_sets" "jsonb") TO "service_role";



REVOKE ALL ON FUNCTION "public"."current_usuario_id"() FROM PUBLIC;
GRANT ALL ON FUNCTION "public"."current_usuario_id"() TO "anon";
GRANT ALL ON FUNCTION "public"."current_usuario_id"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."current_usuario_id"() TO "service_role";



GRANT ALL ON FUNCTION "public"."debug_context"() TO "anon";
GRANT ALL ON FUNCTION "public"."debug_context"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."debug_context"() TO "service_role";



GRANT ALL ON FUNCTION "public"."delete_rutina_owned"("p_id_rutina" integer) TO "anon";
GRANT ALL ON FUNCTION "public"."delete_rutina_owned"("p_id_rutina" integer) TO "authenticated";
GRANT ALL ON FUNCTION "public"."delete_rutina_owned"("p_id_rutina" integer) TO "service_role";



REVOKE ALL ON FUNCTION "public"."delete_workout_session"("p_id_sesion" bigint) FROM PUBLIC;
GRANT ALL ON FUNCTION "public"."delete_workout_session"("p_id_sesion" bigint) TO "anon";
GRANT ALL ON FUNCTION "public"."delete_workout_session"("p_id_sesion" bigint) TO "authenticated";
GRANT ALL ON FUNCTION "public"."delete_workout_session"("p_id_sesion" bigint) TO "service_role";



GRANT ALL ON FUNCTION "public"."feed_friends_workouts"("p_limit" integer, "p_before" timestamp with time zone) TO "anon";
GRANT ALL ON FUNCTION "public"."feed_friends_workouts"("p_limit" integer, "p_before" timestamp with time zone) TO "authenticated";
GRANT ALL ON FUNCTION "public"."feed_friends_workouts"("p_limit" integer, "p_before" timestamp with time zone) TO "service_role";



GRANT ALL ON FUNCTION "public"."feed_friends_workouts_v2"("p_limit" integer, "p_before" timestamp with time zone) TO "anon";
GRANT ALL ON FUNCTION "public"."feed_friends_workouts_v2"("p_limit" integer, "p_before" timestamp with time zone) TO "authenticated";
GRANT ALL ON FUNCTION "public"."feed_friends_workouts_v2"("p_limit" integer, "p_before" timestamp with time zone) TO "service_role";



GRANT ALL ON FUNCTION "public"."finalizar_entrenamiento"("p_id_sesion" integer, "p_sensacion" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."finalizar_entrenamiento"("p_id_sesion" integer, "p_sensacion" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."finalizar_entrenamiento"("p_id_sesion" integer, "p_sensacion" "text") TO "service_role";



GRANT ALL ON FUNCTION "public"."friend_ids_for"("me" integer) TO "anon";
GRANT ALL ON FUNCTION "public"."friend_ids_for"("me" integer) TO "authenticated";
GRANT ALL ON FUNCTION "public"."friend_ids_for"("me" integer) TO "service_role";



GRANT ALL ON FUNCTION "public"."get_sensacion_or_compute"("p_id_sesion" bigint) TO "anon";
GRANT ALL ON FUNCTION "public"."get_sensacion_or_compute"("p_id_sesion" bigint) TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_sensacion_or_compute"("p_id_sesion" bigint) TO "service_role";



GRANT ALL ON FUNCTION "public"."handle_new_auth_user"() TO "anon";
GRANT ALL ON FUNCTION "public"."handle_new_auth_user"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."handle_new_auth_user"() TO "service_role";



REVOKE ALL ON FUNCTION "public"."is_friend"("u1" integer, "u2" integer) FROM PUBLIC;
GRANT ALL ON FUNCTION "public"."is_friend"("u1" integer, "u2" integer) TO "anon";
GRANT ALL ON FUNCTION "public"."is_friend"("u1" integer, "u2" integer) TO "authenticated";
GRANT ALL ON FUNCTION "public"."is_friend"("u1" integer, "u2" integer) TO "service_role";



REVOKE ALL ON FUNCTION "public"."link_rutina_to_current_user"() FROM PUBLIC;
GRANT ALL ON FUNCTION "public"."link_rutina_to_current_user"() TO "anon";
GRANT ALL ON FUNCTION "public"."link_rutina_to_current_user"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."link_rutina_to_current_user"() TO "service_role";



GRANT ALL ON FUNCTION "public"."normalize_username"("p_username" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."normalize_username"("p_username" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."normalize_username"("p_username" "text") TO "service_role";



GRANT ALL ON FUNCTION "public"."reorder_exercises"("p_id_rutina" integer, "p_pairs" "jsonb") TO "anon";
GRANT ALL ON FUNCTION "public"."reorder_exercises"("p_id_rutina" integer, "p_pairs" "jsonb") TO "authenticated";
GRANT ALL ON FUNCTION "public"."reorder_exercises"("p_id_rutina" integer, "p_pairs" "jsonb") TO "service_role";



GRANT ALL ON FUNCTION "public"."replace_exercise_sets"("p_id_rutina" integer, "p_id_ejercicio" integer, "p_sets" "jsonb") TO "anon";
GRANT ALL ON FUNCTION "public"."replace_exercise_sets"("p_id_rutina" integer, "p_id_ejercicio" integer, "p_sets" "jsonb") TO "authenticated";
GRANT ALL ON FUNCTION "public"."replace_exercise_sets"("p_id_rutina" integer, "p_id_ejercicio" integer, "p_sets" "jsonb") TO "service_role";



GRANT ALL ON TABLE "public"."SolicitudesAmistad" TO "anon";
GRANT ALL ON TABLE "public"."SolicitudesAmistad" TO "authenticated";
GRANT ALL ON TABLE "public"."SolicitudesAmistad" TO "service_role";



GRANT ALL ON FUNCTION "public"."request_friend"("destinatario" integer, "p_mensaje" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."request_friend"("destinatario" integer, "p_mensaje" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."request_friend"("destinatario" integer, "p_mensaje" "text") TO "service_role";



GRANT ALL ON FUNCTION "public"."respond_friend_request"("p_id" "uuid", "accion" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."respond_friend_request"("p_id" "uuid", "accion" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."respond_friend_request"("p_id" "uuid", "accion" "text") TO "service_role";



GRANT ALL ON FUNCTION "public"."rpe_label_to_score"("p" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."rpe_label_to_score"("p" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."rpe_label_to_score"("p" "text") TO "service_role";



GRANT ALL ON FUNCTION "public"."rpe_score_to_label"("p" numeric) TO "anon";
GRANT ALL ON FUNCTION "public"."rpe_score_to_label"("p" numeric) TO "authenticated";
GRANT ALL ON FUNCTION "public"."rpe_score_to_label"("p" numeric) TO "service_role";



GRANT ALL ON TABLE "public"."Usuarios" TO "anon";
GRANT ALL ON TABLE "public"."Usuarios" TO "authenticated";
GRANT ALL ON TABLE "public"."Usuarios" TO "service_role";



GRANT ALL ON FUNCTION "public"."save_current_user_profile"("p_username" "text", "p_nombre" "text", "p_edad" integer, "p_peso" numeric, "p_altura" numeric, "p_nivel" "text", "p_objetivo" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."save_current_user_profile"("p_username" "text", "p_nombre" "text", "p_edad" integer, "p_peso" numeric, "p_altura" numeric, "p_nivel" "text", "p_objetivo" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."save_current_user_profile"("p_username" "text", "p_nombre" "text", "p_edad" integer, "p_peso" numeric, "p_altura" numeric, "p_nivel" "text", "p_objetivo" "text") TO "service_role";



GRANT ALL ON FUNCTION "public"."save_current_user_profile"("p_username" "text", "p_nombre" "text", "p_edad" integer, "p_peso" numeric, "p_altura" numeric, "p_nivel" "text", "p_objetivo" "text", "p_sexo" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."save_current_user_profile"("p_username" "text", "p_nombre" "text", "p_edad" integer, "p_peso" numeric, "p_altura" numeric, "p_nivel" "text", "p_objetivo" "text", "p_sexo" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."save_current_user_profile"("p_username" "text", "p_nombre" "text", "p_edad" integer, "p_peso" numeric, "p_altura" numeric, "p_nivel" "text", "p_objetivo" "text", "p_sexo" "text") TO "service_role";



GRANT ALL ON FUNCTION "public"."set_er_orden"() TO "anon";
GRANT ALL ON FUNCTION "public"."set_er_orden"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."set_er_orden"() TO "service_role";



GRANT ALL ON FUNCTION "public"."set_rutinas_owner"() TO "anon";
GRANT ALL ON FUNCTION "public"."set_rutinas_owner"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."set_rutinas_owner"() TO "service_role";



GRANT ALL ON FUNCTION "public"."set_updated_at"() TO "anon";
GRANT ALL ON FUNCTION "public"."set_updated_at"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."set_updated_at"() TO "service_role";



GRANT ALL ON FUNCTION "public"."tg_set_updated_at"() TO "anon";
GRANT ALL ON FUNCTION "public"."tg_set_updated_at"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."tg_set_updated_at"() TO "service_role";



GRANT ALL ON FUNCTION "public"."trg_normalize_username"() TO "anon";
GRANT ALL ON FUNCTION "public"."trg_normalize_username"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."trg_normalize_username"() TO "service_role";



GRANT ALL ON FUNCTION "public"."update_current_user_avatar"("p_url" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."update_current_user_avatar"("p_url" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_current_user_avatar"("p_url" "text") TO "service_role";



GRANT ALL ON FUNCTION "public"."username_is_available"("p_username" "text") TO "anon";
GRANT ALL ON FUNCTION "public"."username_is_available"("p_username" "text") TO "authenticated";
GRANT ALL ON FUNCTION "public"."username_is_available"("p_username" "text") TO "service_role";


















GRANT ALL ON TABLE "public"."Amigos" TO "anon";
GRANT ALL ON TABLE "public"."Amigos" TO "authenticated";
GRANT ALL ON TABLE "public"."Amigos" TO "service_role";



GRANT ALL ON TABLE "public"."Ejercicios" TO "anon";
GRANT ALL ON TABLE "public"."Ejercicios" TO "authenticated";
GRANT ALL ON TABLE "public"."Ejercicios" TO "service_role";



GRANT ALL ON TABLE "public"."EjerciciosRutinaSets" TO "anon";
GRANT ALL ON TABLE "public"."EjerciciosRutinaSets" TO "authenticated";
GRANT ALL ON TABLE "public"."EjerciciosRutinaSets" TO "service_role";



GRANT ALL ON TABLE "public"."EjerciciosRutinas" TO "anon";
GRANT ALL ON TABLE "public"."EjerciciosRutinas" TO "authenticated";
GRANT ALL ON TABLE "public"."EjerciciosRutinas" TO "service_role";



GRANT ALL ON TABLE "public"."EntrenamientoSets" TO "anon";
GRANT ALL ON TABLE "public"."EntrenamientoSets" TO "authenticated";
GRANT ALL ON TABLE "public"."EntrenamientoSets" TO "service_role";



GRANT ALL ON TABLE "public"."Entrenamientos" TO "anon";
GRANT ALL ON TABLE "public"."Entrenamientos" TO "authenticated";
GRANT ALL ON TABLE "public"."Entrenamientos" TO "service_role";



GRANT ALL ON SEQUENCE "public"."Entrenamientos_id_sesion_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."Entrenamientos_id_sesion_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."Entrenamientos_id_sesion_seq" TO "service_role";



GRANT ALL ON TABLE "public"."Medallas" TO "anon";
GRANT ALL ON TABLE "public"."Medallas" TO "authenticated";
GRANT ALL ON TABLE "public"."Medallas" TO "service_role";



GRANT ALL ON TABLE "public"."MedallasUsuario" TO "anon";
GRANT ALL ON TABLE "public"."MedallasUsuario" TO "authenticated";
GRANT ALL ON TABLE "public"."MedallasUsuario" TO "service_role";



GRANT ALL ON TABLE "public"."Programas" TO "anon";
GRANT ALL ON TABLE "public"."Programas" TO "authenticated";
GRANT ALL ON TABLE "public"."Programas" TO "service_role";



GRANT ALL ON TABLE "public"."ProgramasRutinas" TO "anon";
GRANT ALL ON TABLE "public"."ProgramasRutinas" TO "authenticated";
GRANT ALL ON TABLE "public"."ProgramasRutinas" TO "service_role";



GRANT ALL ON SEQUENCE "public"."ProgramasRutinas_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."ProgramasRutinas_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."ProgramasRutinas_id_seq" TO "service_role";



GRANT ALL ON SEQUENCE "public"."Programas_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."Programas_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."Programas_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."ProgresoDeUsuario" TO "anon";
GRANT ALL ON TABLE "public"."ProgresoDeUsuario" TO "authenticated";
GRANT ALL ON TABLE "public"."ProgresoDeUsuario" TO "service_role";



GRANT ALL ON TABLE "public"."Rutinas" TO "anon";
GRANT ALL ON TABLE "public"."Rutinas" TO "authenticated";
GRANT ALL ON TABLE "public"."Rutinas" TO "service_role";



GRANT ALL ON TABLE "public"."SocialComments" TO "anon";
GRANT ALL ON TABLE "public"."SocialComments" TO "authenticated";
GRANT ALL ON TABLE "public"."SocialComments" TO "service_role";



GRANT ALL ON SEQUENCE "public"."SocialComments_id_comment_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."SocialComments_id_comment_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."SocialComments_id_comment_seq" TO "service_role";



GRANT ALL ON TABLE "public"."SocialLikes" TO "anon";
GRANT ALL ON TABLE "public"."SocialLikes" TO "authenticated";
GRANT ALL ON TABLE "public"."SocialLikes" TO "service_role";



GRANT ALL ON SEQUENCE "public"."SocialLikes_id_like_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."SocialLikes_id_like_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."SocialLikes_id_like_seq" TO "service_role";



GRANT ALL ON TABLE "public"."UsuarioRutina" TO "anon";
GRANT ALL ON TABLE "public"."UsuarioRutina" TO "authenticated";
GRANT ALL ON TABLE "public"."UsuarioRutina" TO "service_role";



GRANT ALL ON SEQUENCE "public"."UsuarioRutina_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."UsuarioRutina_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."UsuarioRutina_id_seq" TO "service_role";



GRANT ALL ON SEQUENCE "public"."ejercicios_id_ejercicio_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."ejercicios_id_ejercicio_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."ejercicios_id_ejercicio_seq" TO "service_role";



GRANT ALL ON TABLE "public"."feedbackusuario" TO "anon";
GRANT ALL ON TABLE "public"."feedbackusuario" TO "authenticated";
GRANT ALL ON TABLE "public"."feedbackusuario" TO "service_role";



GRANT ALL ON SEQUENCE "public"."feedbackusuario_id_feedback_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."feedbackusuario_id_feedback_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."feedbackusuario_id_feedback_seq" TO "service_role";



GRANT ALL ON SEQUENCE "public"."medallas_id_medalla_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."medallas_id_medalla_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."medallas_id_medalla_seq" TO "service_role";



GRANT ALL ON SEQUENCE "public"."progresousuario_id_progreso_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."progresousuario_id_progreso_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."progresousuario_id_progreso_seq" TO "service_role";



GRANT ALL ON TABLE "public"."recomendacionesia" TO "anon";
GRANT ALL ON TABLE "public"."recomendacionesia" TO "authenticated";
GRANT ALL ON TABLE "public"."recomendacionesia" TO "service_role";



GRANT ALL ON SEQUENCE "public"."recomendacionesia_id_recomendacion_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."recomendacionesia_id_recomendacion_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."recomendacionesia_id_recomendacion_seq" TO "service_role";



GRANT ALL ON SEQUENCE "public"."rutinas_id_rutina_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."rutinas_id_rutina_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."rutinas_id_rutina_seq" TO "service_role";



GRANT ALL ON SEQUENCE "public"."usuarios_id_usuario_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."usuarios_id_usuario_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."usuarios_id_usuario_seq" TO "service_role";



GRANT ALL ON TABLE "public"."v_finished_workouts" TO "anon";
GRANT ALL ON TABLE "public"."v_finished_workouts" TO "authenticated";
GRANT ALL ON TABLE "public"."v_finished_workouts" TO "service_role";



GRANT ALL ON TABLE "public"."v_finished_workouts_with_label" TO "anon";
GRANT ALL ON TABLE "public"."v_finished_workouts_with_label" TO "authenticated";
GRANT ALL ON TABLE "public"."v_finished_workouts_with_label" TO "service_role";









ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "service_role";































RESET ALL;
