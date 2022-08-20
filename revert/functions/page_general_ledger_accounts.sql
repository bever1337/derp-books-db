-- Revert derp-books-db:functions/page_general_ledger_accounts from pg
BEGIN;
DROP FUNCTION derp_books.sanitize_page_general_ledger_accounts_size;
DROP FUNCTION derp_books.page_general_ledger_accounts;
COMMIT;

