-- Verify derp-books-db:table/accounts on pg

BEGIN;

DO $$
  BEGIN
    ASSERT (
      SELECT EXISTS (
        SELECT 1 FROM pg_type WHERE typname='account_types' AND typnamespace = (
          SELECT oid FROM pg_namespace WHERE nspname='derp_books'
        )
      )
    )=TRUE, 'account_types enum does not exist';
  END;
$$ LANGUAGE plpgsql;

SELECT (
  account_name,
  account_type,
  stack_name
) FROM derp_books.accounts WHERE FALSE;

ROLLBACK;
