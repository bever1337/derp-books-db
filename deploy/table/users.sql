-- Deploy derp-books-db:table/users to pg
-- requires: schema/derp_books
BEGIN;
CREATE TABLE derp_books.users (
  email varchar(255) NOT NULL,
  CONSTRAINT pk_users PRIMARY KEY (email)
);
COMMIT;

