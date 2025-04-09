-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping routines for database 'bookstore'
--

-- creating a complete table called routines
CREATE TABLE routines (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type ENUM('function', 'procedure') NOT NULL,
    definition TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- inserting values into the routines table
INSERT INTO routines (name, type, definition) VALUES
('get_book_details', 'function', 'SELECT * FROM books WHERE book_id = ?'),
('add_book', 'procedure', 'INSERT INTO books (title, author_id) VALUES (?, ?)'),
('update_book', 'procedure', 'UPDATE books SET title = ? WHERE book_id = ?'),
('delete_book', 'procedure', 'DELETE FROM books WHERE book_id = ?'),
('get_author_books', 'function', 'SELECT * FROM books WHERE author_id = ?'),
('get_all_books', 'function', 'SELECT * FROM books'),
('add_author', 'procedure', 'INSERT INTO authors (name) VALUES (?)'),
('update_author', 'procedure', 'UPDATE authors SET name = ? WHERE author_id = ?'),
('delete_author', 'procedure', 'DELETE FROM authors WHERE author_id = ?'),
('get_book_count', 'function', 'SELECT COUNT(*) FROM books');




/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-09 18:58:17
