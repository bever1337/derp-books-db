-- Deploy derp-books-db:procedure/insert_user to pg
-- requires: schema/derp_books
-- requires: table/users

-- todo: This isn't an identity service. User table is only for dev

BEGIN;

CREATE OR REPLACE PROCEDURE derp_books.insert_user(
  IN in_email VARCHAR(255)
) LANGUAGE plpgsql AS $$
BEGIN
  INSERT INTO derp_books.users ( email ) VALUES ( in_email );
END;
$$;

COMMIT;
