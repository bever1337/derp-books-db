-- Deploy derp-books-db:users to pg
-- requires: schema_derp_books

BEGIN;

CREATE TABLE derp_books.users (
  email VARCHAR(255) NOT NULL,
  CONSTRAINT pk_users
    PRIMARY KEY (email)
);

COMMIT;
