-- Revert derp-books-db:users from pg

BEGIN;

DROP TABLE derp_books.users;

COMMIT;
