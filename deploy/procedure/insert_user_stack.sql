-- Deploy derp-books-db:procedure/insert_user_stack to pg
-- requires: schema/derp_books
-- requires: table/stacks
-- requires: table/users
-- requires: table/xref_users_stacks

BEGIN;

CREATE OR REPLACE PROCEDURE derp_books.insert_user_stack(
  IN in_email VARCHAR(255),
  IN in_stack_name VARCHAR(255)
) LANGUAGE plpgsql AS $$
BEGIN
  INSERT INTO derp_books.stacks ( stack_name ) VALUES ( in_stack_name );
  INSERT INTO derp_books.users_stacks ( email, stack_name ) VALUES ( in_email, in_stack_name );
END;
$$;

COMMIT;
