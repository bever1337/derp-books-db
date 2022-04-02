-- Verify derp-books-db:table/stacks on pg

BEGIN;

SELECT stack_name FROM derp_books.stacks WHERE FALSE;

ROLLBACK;
