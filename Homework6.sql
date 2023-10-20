CREATE DATABASE Homework6;

use Homework6;

CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL
);

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);

CREATE TABLE author_book (
    author_id INT,
    book_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    PRIMARY KEY (author_id, book_id)
);


UPDATE authors
SET name = '1'
WHERE LENGTH(last_name) > 7;
