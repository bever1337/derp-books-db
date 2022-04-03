-- Deploy derp-books-db:procedure/insert_journal_entry to pg
-- requires: schema/derp_books
-- requires: table/stacks
-- requires: table/accounts

BEGIN;

CREATE OR REPLACE PROCEDURE derp_books.insert_account(
  IN in_credit VARCHAR(255),
  IN in_debit VARCHAR(255),
  IN in_stack_name VARCHAR(255)
) LANGUAGE plpgsql AS $$
BEGIN
  INSERT INTO derp_books.accounts (
    credit,
    debit,
    stack_name,
  ) VALUES (
    in_credit,
    in_debit,
    in_stack_name
  );
END;
$$;
COMMIT;
