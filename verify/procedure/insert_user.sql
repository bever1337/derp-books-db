-- Verify derp-books-db:procedure/insert_user on pg
BEGIN;
SELECT
  has_function_privilege('derp_books.insert_user(VARCHAR(255))', 'execute');
ROLLBACK;

