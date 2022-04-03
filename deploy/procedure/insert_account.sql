-- Deploy derp-books-db:procedure/insert_account to pg
-- requires: schema/derp_books
-- requires: table/accounts
-- requires: table/stacks
-- requires: table/journal_entries

BEGIN;

CREATE OR REPLACE PROCEDURE derp_books.insert_account(
  IN in_account_name VARCHAR(255),
  IN in_account_type derp_books.account_types,
  IN in_stack_name VARCHAR(255)
) LANGUAGE plpgsql AS $$
BEGIN
  INSERT INTO derp_books.accounts (
    account_name,
    account_type,
    stack_name,
  ) VALUES (
    in_account_name,
    in_account_type,
    in_stack_name
  );
END;
$$;

COMMIT;
