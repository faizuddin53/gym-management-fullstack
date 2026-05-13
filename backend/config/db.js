import pkg from "pg";
const { Pool } = pkg;

const pool = new Pool({
  user: "faizuddin",
  host: "localhost",
  database: "gymmanagment",
  password: "nabeela@9119",
  port: 5432,
});

export default pool;