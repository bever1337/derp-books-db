-- Revert derp-books-db:table/accounts from pg
BEGIN;
ALTER TABLE derp_books.accounts
  DROP CONSTRAINT fk_accounts_stack_name;
DROP TABLE derp_books.accounts;
-- DROP TYPE derp_books.account_types;
COMMIT;

