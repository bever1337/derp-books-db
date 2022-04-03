-- Verify derp-books-db:table/general_ledgers on pg

BEGIN;

SELECT (
  general_ledger_name,
  stack_name
) FROM derp_books.general_ledgers WHERE FALSE;

ROLLBACK;
