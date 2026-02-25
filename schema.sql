DROP TABLE IF EXISTS issued_books CASCADE;
DROP TABLE IF EXISTS books CASCADE;
DROP TABLE IF EXISTS members CASCADE;

-- Members Table
CREATE TABLE members (
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    joined_date DATE DEFAULT CURRENT_DATE
);

-- Books Table
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author VARCHAR(100) NOT NULL,
    available_copies INT CHECK (available_copies >= 0)
);

-- Issued Books Table
CREATE TABLE issued_books (
    issue_id SERIAL PRIMARY KEY,
    member_id INT REFERENCES members(member_id) ON DELETE CASCADE,
    book_id INT REFERENCES books(book_id) ON DELETE CASCADE,
    issue_date DATE DEFAULT CURRENT_DATE,
    return_date DATE
);
