-- Revert derp-books-db:procedure/insert_user from pg

BEGIN;

DROP PROCEDURE derp_books.insert_user;

COMMIT;
