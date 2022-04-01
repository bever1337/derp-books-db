-- Deploy derp-books-db:users_insert to pg
-- requires: schema_derp_books
-- requires: users

BEGIN;

CREATE OR REPLACE PROCEDURE derp_books.users_insert(
  IN users_email VARCHAR(255)
) LANGUAGE plpgsql AS $$
BEGIN
  INSERT INTO derp_books.users ( email ) VALUES ( users_email );
END;
$$;

COMMIT;