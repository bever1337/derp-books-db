-- Deploy derp-books-db:functions/page_general_ledger_accounts to pg
-- requires: schema/derp_books
-- requires: table/stacks
-- requires: table/general_ledgers
BEGIN;
CREATE OR REPLACE FUNCTION derp_books.sanitize_page_general_ledger_accounts_size (IN in_size int, OUT out_size int)
AS $$
  SELECT
    LEAST (100, (
        SELECT
          GREATEST (in_size, 1)));
$$
LANGUAGE sql;
-- after only
CREATE OR REPLACE FUNCTION derp_books.page_general_ledger_accounts (IN in_account_name varchar(255), IN in_size int, IN in_ascending boolean DEFAULT TRUE)
  RETURNS TABLE (
    account_name varchar(255)
  )
  AS $$
BEGIN
  IF in_ascending = TRUE THEN
    RETURN QUERY
    SELECT
      (derp_books.accounts.account_name)
    FROM
      derp_books.accounts
    WHERE
      derp_books.accounts.account_name > in_account_name
    ORDER BY
      derp_books.accounts.account_name ASC
    LIMIT (
      SELECT
        derp_books.sanitize_page_general_ledger_accounts_size (in_size));
  ELSE
    RETURN QUERY
    SELECT
      (derp_books.accounts.account_name)
    FROM
      derp_books.accounts
    WHERE
      derp_books.accounts.account_name < in_account_name
    ORDER BY
      derp_books.accounts.account_name DESC
    LIMIT (
      SELECT
        derp_books.sanitize_page_general_ledger_accounts_size (in_size));
  END IF;
END;
$$
LANGUAGE plpgsql;
COMMIT;

