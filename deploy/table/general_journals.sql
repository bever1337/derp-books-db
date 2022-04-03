-- Deploy derp-books-db:table/general_journals to pg
-- requires: schema/derp_books
-- requires: table/general_ledgers
-- requires: table/stacks

BEGIN;

CREATE TABLE derp_books.general_journals (
  general_journal_name VARCHAR(255) NOT NULL,
  general_ledger_name VARCHAR(255) NOT NULL,
  stack_name VARCHAR(255) NOT NULL,
  CONSTRAINT fk_general_journals_general_ledger_name
    FOREIGN KEY(general_ledger_name, stack_name)
      REFERENCES derp_books.general_ledgers(general_ledger_name, stack_name)
      ON DELETE CASCADE,
  CONSTRAINT fk_general_journals_stack_name
    FOREIGN KEY(stack_name)
      REFERENCES derp_books.stacks(stack_name)
      ON DELETE CASCADE,
  CONSTRAINT pk_general_journals
    PRIMARY KEY (general_journal_name, general_ledger_name, stack_name)
);

COMMIT;
