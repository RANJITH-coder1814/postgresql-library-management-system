-- View All Books
SELECT * FROM books;

-- View Issued Books with Member Name
SELECT m.name, b.title, i.issue_date
FROM issued_books i
JOIN members m ON i.member_id = m.member_id
JOIN books b ON i.book_id = b.book_id;

-- Count Books Issued Per Member
SELECT m.name, COUNT(i.issue_id) AS total_books_issued
FROM issued_books i
JOIN members m ON i.member_id = m.member_id
GROUP BY m.name;

-- Find Available Books
SELECT title, available_copies
FROM books
WHERE available_copies > 0;
