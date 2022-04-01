-- Deploy derp-books-db:xref_users_stacks to pg
-- requires: schema_derp_books
-- requires: stacks
-- requires: users

BEGIN;

CREATE TABLE derp_books.users_stacks (
  email VARCHAR(255) NOT NULL,
  stack_name VARCHAR(255) NOT NULL,
  CONSTRAINT fk_users_stacks_email
    FOREIGN KEY(email)
      REFERENCES derp_books.users(email)
      ON DELETE CASCADE,
  CONSTRAINT fk_users_stacks_stack_name
    FOREIGN KEY(stack_name)
      REFERENCES derp_books.stacks(stack_name)
      ON DELETE CASCADE,
  CONSTRAINT pk_users_stacks
    PRIMARY KEY (email, stack_name)
);

COMMIT;
