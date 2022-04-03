-- Revert derp-books-db:procedure/insert_journal_entry from pg

BEGIN;

DROP PROCEDURE derp_books.insert_journal_entry;

COMMIT;
