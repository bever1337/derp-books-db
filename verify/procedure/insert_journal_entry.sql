-- Verify derp-books-db:procedure/insert_journal_entry on pg

BEGIN;

SELECT has_function_privilege('derp_books.insert_journal_entry(VARCHAR(255), VARCHAR(255), VARCHAR(255), VARCHAR(255))', 'execute');

ROLLBACK;
