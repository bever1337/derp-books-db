-- Revert derp-books-db:table/users from pg

BEGIN;

DROP TABLE derp_books.users;

COMMIT;
