-- Verify derp-books-db:stacks on pg

BEGIN;

SELECT stack_name FROM derp_books.stacks WHERE FALSE;

ROLLBACK;
