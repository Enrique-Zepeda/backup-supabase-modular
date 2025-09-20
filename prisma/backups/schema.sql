
\restrict FKCyIrdSRM9UudoT5ABPj1imLAtWoajp2QsBdqOPZtOxJOyhXlVFSGdkjYinuBp


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
    LANGUAGE "sql" STABLE SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
  SELECT EXISTS (
    SELECT 1
    FROM public."Amigos" am
    WHERE (am.id_usuario1 = u1 AND am.id_usuario2 = u2)
       OR (am.id_usuario2 = u1 AND am.id_usuario1 = u2)
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

SET default_tablespace = '';

SET default_table_access_method = "heap";


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
    CONSTRAINT "usuarios_nivel_experiencia_check" CHECK ((("nivel_experiencia")::"text" = ANY (ARRAY[('principiante'::character varying)::"text", ('intermedio'::character varying)::"text", ('avanzado'::character varying)::"text"]))),
    CONSTRAINT "usuarios_objetivo_check" CHECK ((("objetivo")::"text" = ANY (ARRAY[('fuerza'::character varying)::"text", ('hipertrofia'::character varying)::"text", ('resistencia'::character varying)::"text"])))
);


ALTER TABLE "public"."Usuarios" OWNER TO "postgres";


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



ALTER TABLE ONLY "public"."Ejercicios" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."ejercicios_id_ejercicio_seq"'::"regclass");



ALTER TABLE ONLY "public"."Entrenamientos" ALTER COLUMN "id_sesion" SET DEFAULT "nextval"('"public"."Entrenamientos_id_sesion_seq"'::"regclass");



ALTER TABLE ONLY "public"."Medallas" ALTER COLUMN "id_medalla" SET DEFAULT "nextval"('"public"."medallas_id_medalla_seq"'::"regclass");



ALTER TABLE ONLY "public"."ProgresoDeUsuario" ALTER COLUMN "id_progreso" SET DEFAULT "nextval"('"public"."progresousuario_id_progreso_seq"'::"regclass");



ALTER TABLE ONLY "public"."Rutinas" ALTER COLUMN "id_rutina" SET DEFAULT "nextval"('"public"."rutinas_id_rutina_seq"'::"regclass");



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



CREATE INDEX "idx_entrenamientos_owner_started" ON "public"."Entrenamientos" USING "btree" ("owner_uid", "started_at" DESC);



CREATE INDEX "idx_esets_sesion" ON "public"."EntrenamientoSets" USING "btree" ("id_sesion");



CREATE UNIQUE INDEX "idx_ur_unique" ON "public"."UsuarioRutina" USING "btree" ("id_usuario", "id_rutina");



CREATE OR REPLACE TRIGGER "trg_er_set_orden" BEFORE INSERT ON "public"."EjerciciosRutinas" FOR EACH ROW EXECUTE FUNCTION "public"."set_er_orden"();



CREATE OR REPLACE TRIGGER "trg_link_rutina_owner" AFTER INSERT ON "public"."Rutinas" FOR EACH ROW EXECUTE FUNCTION "public"."link_rutina_to_current_user"();



CREATE OR REPLACE TRIGGER "trg_rutinas_after_insert" AFTER INSERT ON "public"."Rutinas" FOR EACH ROW EXECUTE FUNCTION "public"."attach_owner_after_rutina_insert"();



CREATE OR REPLACE TRIGGER "trg_rutinas_set_owner" BEFORE INSERT ON "public"."Rutinas" FOR EACH ROW EXECUTE FUNCTION "public"."set_rutinas_owner"();



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


ALTER TABLE "public"."UsuarioRutina" ENABLE ROW LEVEL SECURITY;


CREATE POLICY "ent_delete_owner" ON "public"."Entrenamientos" FOR DELETE USING (("owner_uid" = "auth"."uid"()));



CREATE POLICY "ent_insert_owner" ON "public"."Entrenamientos" FOR INSERT WITH CHECK (("owner_uid" = "auth"."uid"()));



CREATE POLICY "ent_select_owner" ON "public"."Entrenamientos" FOR SELECT USING (("owner_uid" = "auth"."uid"()));



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



CREATE POLICY "rutinas_delete_owner" ON "public"."Rutinas" FOR DELETE TO "authenticated" USING (("owner_uid" = "auth"."uid"()));



CREATE POLICY "rutinas_insert_owner" ON "public"."Rutinas" FOR INSERT TO "authenticated" WITH CHECK (("owner_uid" = "auth"."uid"()));



CREATE POLICY "rutinas_select_owner" ON "public"."Rutinas" FOR SELECT TO "authenticated" USING (("owner_uid" = "auth"."uid"()));



CREATE POLICY "rutinas_update_owner" ON "public"."Rutinas" FOR UPDATE TO "authenticated" USING (("owner_uid" = "auth"."uid"())) WITH CHECK (("owner_uid" = "auth"."uid"()));



CREATE POLICY "ur_cud_self" ON "public"."UsuarioRutina" TO "authenticated" USING (("id_usuario" = "public"."current_usuario_id"())) WITH CHECK (("id_usuario" = "public"."current_usuario_id"()));



CREATE POLICY "ur_select_owner_or_friend" ON "public"."UsuarioRutina" FOR SELECT TO "authenticated" USING ((("id_usuario" = "public"."current_usuario_id"()) OR "public"."is_friend"("id_usuario", "public"."current_usuario_id"())));





ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";






GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";

























































































































































GRANT ALL ON FUNCTION "public"."attach_owner_after_rutina_insert"() TO "anon";
GRANT ALL ON FUNCTION "public"."attach_owner_after_rutina_insert"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."attach_owner_after_rutina_insert"() TO "service_role";



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



GRANT ALL ON FUNCTION "public"."reorder_exercises"("p_id_rutina" integer, "p_pairs" "jsonb") TO "anon";
GRANT ALL ON FUNCTION "public"."reorder_exercises"("p_id_rutina" integer, "p_pairs" "jsonb") TO "authenticated";
GRANT ALL ON FUNCTION "public"."reorder_exercises"("p_id_rutina" integer, "p_pairs" "jsonb") TO "service_role";



GRANT ALL ON FUNCTION "public"."replace_exercise_sets"("p_id_rutina" integer, "p_id_ejercicio" integer, "p_sets" "jsonb") TO "anon";
GRANT ALL ON FUNCTION "public"."replace_exercise_sets"("p_id_rutina" integer, "p_id_ejercicio" integer, "p_sets" "jsonb") TO "authenticated";
GRANT ALL ON FUNCTION "public"."replace_exercise_sets"("p_id_rutina" integer, "p_id_ejercicio" integer, "p_sets" "jsonb") TO "service_role";



GRANT ALL ON FUNCTION "public"."set_er_orden"() TO "anon";
GRANT ALL ON FUNCTION "public"."set_er_orden"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."set_er_orden"() TO "service_role";



GRANT ALL ON FUNCTION "public"."set_rutinas_owner"() TO "anon";
GRANT ALL ON FUNCTION "public"."set_rutinas_owner"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."set_rutinas_owner"() TO "service_role";


















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



GRANT ALL ON TABLE "public"."UsuarioRutina" TO "anon";
GRANT ALL ON TABLE "public"."UsuarioRutina" TO "authenticated";
GRANT ALL ON TABLE "public"."UsuarioRutina" TO "service_role";



GRANT ALL ON SEQUENCE "public"."UsuarioRutina_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."UsuarioRutina_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."UsuarioRutina_id_seq" TO "service_role";



GRANT ALL ON TABLE "public"."Usuarios" TO "anon";
GRANT ALL ON TABLE "public"."Usuarios" TO "authenticated";
GRANT ALL ON TABLE "public"."Usuarios" TO "service_role";



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






























\unrestrict FKCyIrdSRM9UudoT5ABPj1imLAtWoajp2QsBdqOPZtOxJOyhXlVFSGdkjYinuBp

RESET ALL;
