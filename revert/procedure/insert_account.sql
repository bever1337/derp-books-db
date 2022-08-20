-- Revert derp-books-db:procedure/insert_account from pg
BEGIN;
DROP PROCEDURE derp_books.insert_account;
COMMIT;

