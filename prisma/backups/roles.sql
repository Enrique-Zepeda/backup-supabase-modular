
\restrict bH0O14e5E4hHplclt51fSxn4x7gFg7xyVeflWkbEhULSDFWVpDOwkHxApqiD2zU

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

CREATE ROLE "cli_login_postgres";
ALTER ROLE "cli_login_postgres" WITH NOINHERIT NOCREATEROLE NOCREATEDB LOGIN NOBYPASSRLS VALID UNTIL '2025-09-15 13:45:04.835226+00';

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

GRANT "postgres" TO "cli_login_postgres" WITH INHERIT FALSE GRANTED BY "supabase_admin";

\unrestrict bH0O14e5E4hHplclt51fSxn4x7gFg7xyVeflWkbEhULSDFWVpDOwkHxApqiD2zU

RESET ALL;
