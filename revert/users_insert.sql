-- Revert derp-books-db:users_insert from pg

BEGIN;

DROP PROCEDURE derp_books.users_insert;

COMMIT;
