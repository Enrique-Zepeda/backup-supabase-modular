
\restrict zdROi2Cf7rOO0k3hgOmcJgbNSLpLHKaGCM5YhTatacbhpUXgyOi670RCaTGkc4U

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

CREATE ROLE "cli_login_postgres";
ALTER ROLE "cli_login_postgres" WITH NOINHERIT NOCREATEROLE NOCREATEDB LOGIN NOBYPASSRLS VALID UNTIL '2025-09-15 13:45:04.835226+00';

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

GRANT "postgres" TO "cli_login_postgres" WITH INHERIT FALSE GRANTED BY "supabase_admin";

\unrestrict zdROi2Cf7rOO0k3hgOmcJgbNSLpLHKaGCM5YhTatacbhpUXgyOi670RCaTGkc4U

RESET ALL;
