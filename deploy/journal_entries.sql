-- Deploy derp-books-db:journal_entries to pg
-- requires: schema_derp_books
-- requires: accounts
-- requires: stacks

BEGIN;

CREATE TABLE derp_books.journal_entries (
  credit VARCHAR(255) NOT NULL,
  debit VARCHAR(255) NOT NULL,
  row_no BIGSERIAL,
  stack_name VARCHAR(255) NOT NULL,
  CONSTRAINT fk_journal_entries_credit
    FOREIGN KEY(credit, stack_name)
      REFERENCES derp_books.accounts(account_name, stack_name)
      ON DELETE CASCADE,
  CONSTRAINT fk_journal_entries_debit
    FOREIGN KEY(debit, stack_name)
      REFERENCES derp_books.accounts(account_name, stack_name)
      ON DELETE CASCADE,
  CONSTRAINT fk_journal_entries_stack_name
    FOREIGN KEY(stack_name)
      REFERENCES derp_books.stacks(stack_name)
      ON DELETE CASCADE,
  CONSTRAINT pk_journal_entries
    PRIMARY KEY (row_no, stack_name)
);

COMMIT;
