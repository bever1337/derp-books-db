-- Revert derp-books-db:table/xref_users_stacks from pg

BEGIN;

ALTER TABLE derp_books.users_stacks DROP CONSTRAINT fk_users_stacks_email;
ALTER TABLE derp_books.users_stacks DROP CONSTRAINT fk_users_stacks_stack_name;
DROP TABLE derp_books.users_stacks;

COMMIT;
