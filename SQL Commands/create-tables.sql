-- Drop tables if they exist
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS ProductDetails;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Sellers;
DROP TABLE IF EXISTS Customers;

-- Create Customers table
CREATE TABLE Customers
(
    customer_id INT PRIMARY KEY,
    name        VARCHAR(255) NOT NULL,
    email       VARCHAR(255) NOT NULL,
    status      VARCHAR(50) DEFAULT 'Active'
);

-- Create Sellers table
CREATE TABLE Sellers
(
    seller_id INT PRIMARY KEY,
    name      VARCHAR(255) NOT NULL,
    status    VARCHAR(50) DEFAULT 'Active'
);

-- Create Products table
CREATE TABLE Products
(
    product_id INT PRIMARY KEY,
    name       VARCHAR(255) NOT NULL
);

-- Create Product Details table
CREATE TABLE ProductDetails
(
    product_id INT,
    seller_id  INT,
    price      DECIMAL(10, 2) NOT NULL,
    quantity   INT DEFAULT 0,
    PRIMARY KEY (seller_id, product_id),
    FOREIGN KEY (product_id) REFERENCES Products (product_id),
    FOREIGN KEY (seller_id) REFERENCES Sellers (seller_id)
);

-- Create Orders table
CREATE TABLE Orders
(
    order_id    INT NOT NULL,
    customer_id INT,
    product_id  INT,
    seller_id   INT,
    order_date  DATE,
    quantity    INT,
    PRIMARY KEY (order_id, customer_id, product_id, seller_id),
    CHECK (quantity > 0),
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id),
    FOREIGN KEY (product_id, seller_id) REFERENCES ProductDetails(product_id, seller_id)
);

-- view tables list
SHOW
tables;