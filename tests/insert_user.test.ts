import { Pool } from "pg";

let pool: Pool;

beforeAll(() => {
  pool = new Pool({
    connectionTimeoutMillis: 4200,
  });
});

afterAll(() => pool.end());

describe("PROCEDURE derp_books.insert_user", () => {
  it("Supports inserting users for development", async () => {
    await pool.query(`CALL derp_books.insert_user('example@example.com');`);
  });
});

describe("PROCEDURE derp_books.insert_user_stack", () => {
  it("Supports inserting user-scoped stacks", async () => {
    await pool.query(
      `CALL derp_books.insert_user_stack('example@example.com', 'stacks on stacks');`
    );
  });
});

describe("PROCEDURE derp_books.insert_general_ledger", () => {
  it("Supports inserting stack-scoped general ledgers", async () => {
    await pool.query(
      `CALL derp_books.insert_general_ledger(0, 'the book', 'stacks on stacks');`
    );
  });
});

describe("PROCEDURE derp_books.insert_account", () => {
  it("Supports inserting ledger-scoped accounts", async () => {
    await pool.query(
      `CALL derp_books.insert_account('my parents', 'the book', 'stacks on stacks');`
    );
  });
});
