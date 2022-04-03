-- Revert derp-books-db:table/general_journals from pg

BEGIN;

ALTER TABLE derp_books.general_journals DROP CONSTRAINT fk_general_journals_stack_name;
ALTER TABLE derp_books.general_journals DROP CONSTRAINT fk_general_journals_general_ledger_name;
DROP TABLE derp_books.general_journals;

COMMIT;
