# 📚 Bookstore Database Management System (DBMS)

This project is a MySQL-based Bookstore Database designed to handle the core functionalities of an online or physical bookstore. It includes structured tables and relationships to manage books, authors, customers, orders, shipping, and user accounts.

---

## 🛠️ Technologies Used
- **Database:** MySQL
- **Tooling:** MySQL Workbench, VS Code, Git
- **Language:** SQL
- **Version Control:** GitHub

---

## 📂 Database Structure

The database includes the following tables:

1. **Books**
   - `book_id` (PK)
   - `title`
   - `genre`
   - `price`
   - `author_id` (FK)

2. **Authors**
   - `author_id` (PK)
   - `name`
   - `country`

3. **Customers**
   - `customer_id` (PK)
   - `name`
   - `email`
   - `address`

4. **Orders**
   - `order_id` (PK)
   - `customer_id` (FK)
   - `order_date`
   - `total_price`

5. **OrderDetails**
   - `order_detail_id` (PK)
   - `order_id` (FK)
   - `book_id` (FK)
   - `quantity`
   - `price`

6. **Shipping**
   - `shipping_id` (PK)
   - `order_id` (FK)
   - `shipping_address`
   - `shipping_date`
   - `status`

7. **Users**
   - `user_id` (PK)
   - `username`
   - `password` (hashed if implemented)
   - `role` (admin, staff, customer)

---

## 🔐 User Roles & Access Control

Roles are implemented to manage database access:
- **Admin:** Full access to all tables and operations.
- **Staff:** Can manage orders, view customers and inventory.
- **Customer:** Can place orders and view order status.

> (You can optionally create a `ROLES` table and use `GRANT` statements to manage permissions.)

---

## ✅ Features

- Add/update/delete books and authors
- Manage customer information
- Track orders and order details
- Monitor shipping status
- Role-based access to improve database security

---

## 📦 How to Set It Up

1. Clone the repo:
   ```bash
   git clone https://github.com/spookeylucy/bookstore-database.git
   cd bookstore-database



The ER Diagram
