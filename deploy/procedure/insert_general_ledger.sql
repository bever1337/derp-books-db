-- Deploy derp-books-db:procedure/insert_general_ledger to pg
-- requires: schema/derp_books
-- requires: table/stacks
-- requires: table/general_ledgers

BEGIN;

CREATE OR REPLACE PROCEDURE derp_books.insert_general_ledger(
  IN in_fractions BIGINT,
  IN in_general_ledger_name VARCHAR(255),
  IN in_stack_name VARCHAR(255)
) LANGUAGE plpgsql AS $insert_general_ledger$
BEGIN
  INSERT INTO derp_books.general_ledgers (
    fractions,
    general_ledger_name,
    stack_name
  ) VALUES (
    in_fractions,
    in_general_ledger_name,
    in_stack_name
  );
END;
$insert_general_ledger$;

COMMIT;
