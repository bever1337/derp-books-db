-- Verify derp-books-db:procedure/insert_account on pg

BEGIN;

SELECT has_function_privilege('derp_books.insert_account(VARCHAR(255), derp_books.account_types, VARCHAR(255), VARCHAR(255))', 'execute');

ROLLBACK;
