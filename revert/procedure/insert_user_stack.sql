-- Revert derp-books-db:procedure/insert_user_stack from pg

BEGIN;

DROP PROCEDURE derp_books.insert_user_stack;

COMMIT;
