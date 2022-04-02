-- Revert derp-books-db:schema/derp_books from pg

BEGIN;

DROP SCHEMA derp_books;

COMMIT;
