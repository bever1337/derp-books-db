-- Deploy derp-books-db:table/journal_entries to pg
-- requires: schema/derp_books
-- requires: table/accounts
-- requires: table/general_ledgers
-- requires: table/stacks

BEGIN;

CREATE TABLE derp_books.journal_entries (
  credit VARCHAR(255) NOT NULL,
  debit VARCHAR(255) NOT NULL,
  general_ledger_name VARCHAR(255) NOT NULL,
  stack_name VARCHAR(255) NOT NULL,
  surrogate_id BIGSERIAL,

  CONSTRAINT fk_journal_entries_credit
    FOREIGN KEY(credit, general_ledger_name, stack_name)
      REFERENCES derp_books.accounts(account_name, general_ledger_name, stack_name)
      ON DELETE CASCADE,
  CONSTRAINT fk_journal_entries_debit
    FOREIGN KEY(debit, general_ledger_name, stack_name)
      REFERENCES derp_books.accounts(account_name, general_ledger_name, stack_name)
      ON DELETE CASCADE,
  CONSTRAINT fk_journal_entries_general_ledger_name
    FOREIGN KEY(general_ledger_name, stack_name)
      REFERENCES derp_books.general_ledgers(general_ledger_name, stack_name)
      ON DELETE CASCADE,
  CONSTRAINT fk_journal_entries_stack_name
    FOREIGN KEY(stack_name)
      REFERENCES derp_books.stacks(stack_name)
      ON DELETE CASCADE,
  CONSTRAINT pk_journal_entries
    PRIMARY KEY (surrogate_id)
);

COMMIT;
