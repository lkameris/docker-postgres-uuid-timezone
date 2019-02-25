SELECT * FROM pg_extension;

CREATE SCHEMA IF NOT EXISTS "crm";

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" with SCHEMA "crm";
   
SELECT * FROM pg_extension;

SELECT e.extname
     , n.nspname      AS home_schema_of_extension
     , extrelocatable AS extension_can_be_relocated
FROM   pg_catalog.pg_extension e
JOIN   pg_catalog.pg_namespace n ON n.oid = e.extnamespace;

ALTER USER CURRENT_USER SET search_path to 'crm';