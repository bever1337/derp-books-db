-- Verify derp-books-db:table/general_journals on pg

BEGIN;

SELECT (
  general_journal_name,
  general_ledger_name,
  stack_name
) FROM derp_books.general_journals WHERE FALSE;

ROLLBACK;
