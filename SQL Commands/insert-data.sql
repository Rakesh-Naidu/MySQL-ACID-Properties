-- Insert data into Customers table
INSERT INTO Customers (customer_id, name, email, status)
VALUES (1, 'Alice', 'alice@example.com', 'Active'),
       (2, 'Bob', 'bob@example.com', 'Active'),
       (3, 'Charlie', 'charlie@example.com', 'Active'),
       (4, 'David', 'david@example.com', 'Active'),
       (5, 'Eve', 'eve@example.com', 'Active'),
       (6, 'Frank', 'frank@example.com', 'Active'),
       (7, 'Grace', 'grace@example.com', 'Active'),
       (8, 'Heidi', 'heidi@example.com', 'Active'),
       (9, 'Ivan', 'ivan@example.com', 'Active'),
       (10, 'Judy', 'judy@example.com', 'Active');

-- Insert data into Sellers table
INSERT INTO Sellers (seller_id, name, status)
VALUES (1, 'Seller A', 'Active'),
       (2, 'Seller B', 'Active'),
       (3, 'Seller C', 'Active'),
       (4, 'Seller D', 'Active'),
       (5, 'Seller E', 'Active'),
       (6, 'Seller F', 'Active'),
       (7, 'Seller G', 'Active'),
       (8, 'Seller H', 'Active'),
       (9, 'Seller I', 'Active'),
       (10, 'Seller J', 'Active'),
       (11, 'Seller K', 'Active'),
       (12, 'Seller L', 'Active'),
       (13, 'Seller M', 'Active'),
       (14, 'Seller N', 'Active'),
       (15, 'Seller O', 'Active');

-- Insert data into Products table
INSERT INTO Products (product_id, name)
VALUES (1, 'Product 1'),
       (2, 'Product 2'),
       (3, 'Product 3'),
       (4, 'Product 4'),
       (5, 'Product 5'),
       (6, 'Product 6'),
       (7, 'Product 7'),
       (8, 'Product 8'),
       (9, 'Product 9'),
       (10, 'Product 10');

-- Insert data into ProductDetails table
INSERT INTO ProductDetails (product_id, seller_id, price, quantity)
VALUES (1, 1, 10.99, 100),
       (2, 1, 20.99, 200),
       (3, 2, 15.99, 150),
       (4, 2, 25.99, 250),
       (5, 3, 12.99, 120),
       (6, 3, 22.99, 220),
       (7, 4, 30.99, 300),
       (8, 4, 35.99, 350),
       (9, 5, 18.99, 180),
       (10, 5, 28.99, 280),
       (1, 6, 10.99, 100),
       (2, 7, 20.99, 200),
       (3, 8, 15.99, 150),
       (4, 9, 25.99, 250),
       (5, 10, 12.99, 120),
       (6, 11, 22.99, 220),
       (7, 12, 30.99, 300),
       (8, 13, 35.99, 350),
       (9, 14, 18.99, 180),
       (10, 15, 28.99, 280);

-- Select all data from Customers table
SELECT *
FROM Customers;

-- Select all data from Sellers table
SELECT *
FROM Sellers;

-- Select all data from Products table
SELECT *
FROM Products;

-- Select all data from ProductDetails table
SELECT *
FROM ProductDetails;

-- Select all data from Orders table (should be empty)
SELECT *
FROM Orders;
