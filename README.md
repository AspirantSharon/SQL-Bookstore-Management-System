# SQL Bookstore Management System

## Project Description
A relational database designed to manage a bookstore, including tables for books, customers, orders, and employees. Features include:
- Order Tracking
- Sales Reporting
- Stock Management

## Technologies Used
- SQL
- MySQL

## Features
- Created tables: `Books`, `Customers`, `Orders`, `Order_Items`, `Employees`.
- Developed SQL queries for generating reports, managing inventory, and tracking orders.
- Used foreign key relationships to ensure data integrity.

## Features
- **Book Management**: Add, update, and delete books in the inventory.
- **Customer Management**: Add and track customers who make purchases.
- **Order Management**: Track orders placed by customers and monitor order statuses.
- **Sales Reports**: Generate reports to see total sales and best-selling books.
- **Stock Management**: Update stock levels after an order is placed.


## Database Structure
The database consists of the following tables:

- **Books**: Stores information about each book (id, title, author, price, stock quantity).
- **Customers**: Contains details about customers (id, name, email, phone number).
- **Orders**: Tracks each order placed (id, customer_id, order_date, total_amount).
- **Order_Items**: Contains information about the books in an order (order_id, book_id, quantity).
- **Employees**: Details about employees (id, name, role).

## How to Install & Set Up

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/SQL-Bookstore-Management-System.git

2. Install MySQL on your local machine. Follow the official installation guide: https://dev.mysql.com/doc/refman/8.0/en/installing.html.

3. Set up the MySQL database:

- Open MySQL Workbench or your preferred database client.
- Run the SQL script files (create_tables.sql, insert_data.sql, etc.) in the database client to set up the tables and insert sample data.

4. Verify the tables are created by running:
SHOW TABLES;

5. Start running SQL queries to interact with the database:
SELECT * FROM Books;




