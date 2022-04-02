-- Verify derp-books-db:table/journal_entries on pg

BEGIN;

SELECT
  debit,
  credit,
  row_no,
  stack_name 
FROM derp_books.journal_entries WHERE FALSE;

ROLLBACK;
