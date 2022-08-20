-- Revert derp-books-db:procedure/insert_general_ledger from pg

BEGIN;

DROP PROCEDURE derp_books.insert_general_ledger;

COMMIT;
