-- Deploy derp-books-db:table/accounts to pg
-- requires: schema/derp_books
-- requires: table/stacks

BEGIN;

CREATE TYPE derp_books.account_types AS ENUM ('assets', 'equity', 'expenses', 'liabilities', 'revenue');

CREATE TABLE derp_books.accounts (
  account_name VARCHAR(255) NOT NULL,
  stack_name VARCHAR(255) NOT NULL,
  account_type derp_books.account_types NOT NULL,
  CONSTRAINT fk_accounts_stack_name
    FOREIGN KEY(stack_name)
      REFERENCES derp_books.stacks(stack_name)
      ON DELETE CASCADE,
  CONSTRAINT pk_accounts
    PRIMARY KEY (account_name, stack_name)
);

COMMIT;
