-- Insert Members
INSERT INTO members (name, email, phone) VALUES
('Ravi Kumar', 'ravi@gmail.com', '9876543210'),
('Anjali Sharma', 'anjali@gmail.com', '9123456780');

-- Insert Books
INSERT INTO books (title, author, available_copies) VALUES
('Database Systems', 'Korth', 5),
('Operating Systems', 'Galvin', 3),
('Data Structures', 'Sahni', 4);

-- Issue Books
INSERT INTO issued_books (member_id, book_id) VALUES
(1, 1),
(2, 2);
