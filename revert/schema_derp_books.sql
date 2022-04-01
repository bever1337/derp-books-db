-- Revert derp-books-db:schema_derp_books from pg

BEGIN;

DROP SCHEMA derp_books;

COMMIT;
