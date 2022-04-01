-- Verify derp-books-db:accounts on pg

BEGIN;

SELECT enum_range(NULL::derp_books.account_types);
SELECT account_name FROM derp_books.accounts WHERE FALSE;

ROLLBACK;
