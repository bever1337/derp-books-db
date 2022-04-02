-- Verify derp-books-db:table/users on pg

BEGIN;

SELECT email FROM derp_books.users WHERE FALSE;

ROLLBACK;
