-- Revert derp-books-db:stacks from pg

BEGIN;

DROP TABLE derp_books.stacks;

COMMIT;
