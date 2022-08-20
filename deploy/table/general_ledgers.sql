-- Deploy derp-books-db:table/general_ledgers to pg
-- requires: schema/derp_books
-- requires: table/stacks

BEGIN;

CREATE TABLE derp_books.general_ledgers (
  fractions BIGINT NOT NULL,
  general_ledger_name VARCHAR(255) NOT NULL,
  stack_name VARCHAR(255) NOT NULL,
  CONSTRAINT fk_general_ledgers_stack_name
    FOREIGN KEY(stack_name)
      REFERENCES derp_books.stacks(stack_name)
      ON DELETE CASCADE,
  CONSTRAINT pk_general_ledgers
    PRIMARY KEY (general_ledger_name, stack_name)
);

COMMIT;
