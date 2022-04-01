-- Deploy derp-books-db:stacks to pg
-- requires: schema_derp_books

BEGIN;

CREATE TABLE derp_books.stacks (
  stack_name VARCHAR(255) NOT NULL,
  CONSTRAINT pk_stacks
    PRIMARY KEY (stack_name)
);

COMMIT;
