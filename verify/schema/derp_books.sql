-- Verify derp-books-db:schema/derp_books on pg

BEGIN;

SELECT pg_catalog.has_schema_privilege('derp_books', 'usage');

ROLLBACK;
