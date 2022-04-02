-- Revert derp-books-db:table/journal_entries from pg

BEGIN;

ALTER TABLE derp_books.journal_entries DROP CONSTRAINT fk_journal_entries_credit;
ALTER TABLE derp_books.journal_entries DROP CONSTRAINT fk_journal_entries_debit;
ALTER TABLE derp_books.journal_entries DROP CONSTRAINT fk_journal_entries_stack_name;

DROP TABLE derp_books.journal_entries;

COMMIT;
