CREATE DATABASE bookstore;
USE bookstore;


CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    publisher VARCHAR(255),
    stock_quantity INT NOT NULL
);


INSERT INTO Books (title, author, price, publisher, stock_quantity)
VALUES 
('The Great Gatsby', 'F. Scott Fitzgerald', 10.99, 'Scribner', 50),
('1984', 'George Orwell', 9.99, 'Secker & Warburg', 30),
('To Kill a Mockingbird', 'Harper Lee', 8.99, 'J.B. Lippincott & Co.', 20);


SELECT * FROM Books;



CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    address VARCHAR(255)
);


CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    total_price DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    book_id INT,
    quantity INT,
    price_at_time DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);




CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    position VARCHAR(100),
    email VARCHAR(255),
    phone_number VARCHAR(20)
);


INSERT INTO Customers (name, email, phone_number, address)
VALUES 
('John Doe', 'john.doe@example.com', '555-1234', '123 Main St, City'),
('Jane Smith', 'jane.smith@example.com', '555-5678', '456 Elm St, City');


INSERT INTO Orders (customer_id, order_date, total_price)
VALUES
(1, '2024-11-08', 21.98),
(2, '2024-11-08', 18.98);


INSERT INTO Order_Items (order_id, book_id, quantity, price_at_time)
VALUES 
(1, 1, 2, 10.99),
(2, 2, 2, 9.99);


INSERT INTO Employees (name, position, email, phone_number)
VALUES 
('Alice Johnson', 'Sales Manager', 'alice.johnson@example.com', '555-0001'),
('Bob Williams', 'Cashier', 'bob.williams@example.com', '555-0002');


SELECT * FROM Books; 


SELECT Customers.name, COUNT(Order_Items.order_item_id) AS books_ordered
FROM Customers
JOIN Orders ON Customers.customer_id = Orders.customer_id
JOIN Order_Items ON Orders.order_id = Order_Items.order_id
GROUP BY Customers.name
HAVING books_ordered > 1;


SELECT Books.title, SUM(Order_Items.quantity * Order_Items.price_at_time) AS total_sales
FROM Order_Items
JOIN Books ON Order_Items.book_id = Books.book_id
GROUP BY Books.title;


SELECT Orders.order_id, Customers.name, Orders.order_date, Orders.total_price
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id
WHERE Orders.order_date = '2024-11-08';


SELECT title, stock_quantity
FROM Books
WHERE stock_quantity < 10;






















