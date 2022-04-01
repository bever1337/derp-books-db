-- Verify derp-books-db:users on pg

BEGIN;

SELECT email FROM derp_books.users WHERE FALSE;

ROLLBACK;
