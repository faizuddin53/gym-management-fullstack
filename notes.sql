CREATE TABLE members (
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  phone VARCHAR(15) UNIQUE,
  email VARCHAR(100) UNIQUE,
  gender VARCHAR(10),
  date_of_birth DATE,
  join_date DATE DEFAULT CURRENT_DATE,
  status VARCHAR(20) DEFAULT 'active', -- active/inactive
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE fees (
  id SERIAL PRIMARY KEY,
  member_id INT REFERENCES members(id) ON DELETE CASCADE,
  amount DECIMAL(10,2) DEFAULT 700,
  month INT,   -- 1 to 12
  year INT,    -- 2026
  payment_date DATE DEFAULT CURRENT_DATE,
  status VARCHAR(20) DEFAULT 'unpaid'
);



CREATE TABLE attendance (
  id SERIAL PRIMARY KEY,
  member_id INT REFERENCES members(id) ON DELETE CASCADE,
  date DATE DEFAULT CURRENT_DATE,
  check_in TIME,
  check_out TIME,
  status VARCHAR(10) DEFAULT 'absent'
)