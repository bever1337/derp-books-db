-- Deploy derp-books-db:procedure/insert_journal_entry to pg
-- requires: schema/derp_books
-- requires: table/accounts
-- requires: table/general_journals
-- requires: table/general_ledgers
-- requires: table/journal_entries
-- requires: table/stacks

BEGIN;

CREATE OR REPLACE PROCEDURE derp_books.insert_journal_entry(
  IN in_credit VARCHAR(255),
  IN in_debit VARCHAR(255),
  IN in_general_journal_name VARCHAR(255),
  IN in_general_ledger_name VARCHAR(255),
  IN in_stack_name VARCHAR(255)
) LANGUAGE plpgsql AS $$
BEGIN
  INSERT INTO derp_books.journal_entries (
    credit,
    debit,
    general_journal_name,
    general_ledger_name,
    stack_name
  ) VALUES (
    in_credit,
    in_debit,
    in_general_journal_name,
    in_general_ledger_name,
    in_stack_name
  );
END;
$$;

COMMIT;
