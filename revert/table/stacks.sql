-- Revert derp-books-db:table/stacks from pg
BEGIN;
DROP TABLE derp_books.stacks;
COMMIT;

