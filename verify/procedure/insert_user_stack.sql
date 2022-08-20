-- Verify derp-books-db:procedure/insert_user_stack on pg
BEGIN;
SELECT
  has_function_privilege('derp_books.insert_user_stack(VARCHAR(255), VARCHAR(255))', 'execute');
ROLLBACK;

