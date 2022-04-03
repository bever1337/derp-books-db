-- Deploy derp-books-db:table/journal_entries to pg
-- requires: schema/derp_books
-- requires: table/stacks
-- requires: table/accounts

BEGIN;

CREATE TABLE derp_books.journal_entries (
  credit VARCHAR(255) NOT NULL,
  debit VARCHAR(255) NOT NULL,
  stack_name VARCHAR(255) NOT NULL,
  surrogate_id BIGSERIAL,
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
    PRIMARY KEY (surrogate_id)
);

COMMIT;
