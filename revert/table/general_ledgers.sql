-- Revert derp-books-db:table/general_ledgers from pg
BEGIN;
ALTER TABLE derp_books.general_ledgers
  DROP CONSTRAINT fk_general_ledgers_stack_name;
DROP TABLE derp_books.general_ledgers;
COMMIT;

