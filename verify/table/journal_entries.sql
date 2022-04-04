-- Verify derp-books-db:table/journal_entries on pg

BEGIN;

SELECT
  credit,
  debit,
  general_ledger_name,
  stack_name,
  surrogate_id
FROM derp_books.journal_entries WHERE FALSE;

ROLLBACK;
