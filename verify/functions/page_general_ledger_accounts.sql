-- Verify derp-books-db:functions/page_general_ledger_accounts on pg
BEGIN;
SELECT
  has_function_privilege('derp_books.sanitize_page_general_ledger_accounts_size(INT, INT)', 'execute');
SELECT
  has_function_privilege('derp_books.page_general_ledger_accounts(VARCHAR(255), BOOLEAN, INT, NULL, VARCHAR(255))', 'execute');
ROLLBACK;

