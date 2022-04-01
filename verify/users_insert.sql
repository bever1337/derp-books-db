-- Verify derp-books-db:users_insert on pg

BEGIN;

SELECT has_function_privilege('derp_books.users_insert(VARCHAR(255))', 'execute');

ROLLBACK;
