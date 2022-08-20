-- Verify derp-books-db:procedure/insert_general_ledger on pg

BEGIN;

SELECT has_function_privilege('derp_books.insert_general_ledger(BIGINT, VARCHAR(255), VARCHAR(255))', 'execute');

ROLLBACK;
