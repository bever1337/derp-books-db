-- Verify derp-books-db:table/xref_users_stacks on pg

BEGIN;

SELECT email, stack_name FROM derp_books.users_stacks WHERE FALSE;

ROLLBACK;
