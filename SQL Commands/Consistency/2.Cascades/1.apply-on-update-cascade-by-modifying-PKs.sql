-- We need to make the Primary keys in Customers, Sellers, Products tables to Text datatype.

-- Begin the transaction
BEGIN;

-- Drop existing foreign key constraints on Orders and ProductDetails
ALTER TABLE Orders
DROP
FOREIGN KEY orders_ibfk_1, -- replace with actual constraint name
DROP
FOREIGN KEY orders_ibfk_2; -- replace with actual constraint name

ALTER TABLE ProductDetails
DROP
FOREIGN KEY productdetails_ibfk_1, -- replace with actual constraint name
DROP
FOREIGN KEY productdetails_ibfk_2;  -- replace with actual constraint name

-- See Orders table schema
SHOW
CREATE TABLE Orders;

-- See ProductDetails table schema
SHOW
CREATE TABLE ProductDetails;

----------------------------------------------------------------------------------------------------

-- Drop existing primary key constraint
ALTER TABLE Customers
DROP
PRIMARY KEY;

-- Change column type
ALTER TABLE Customers
    MODIFY customer_id VARCHAR (50);

-- Re-add primary key constraint
ALTER TABLE Customers
    ADD PRIMARY KEY (customer_id);

-- See Customers table schema
SHOW
CREATE TABLE Customers;

-- Drop existing primary key constraint
ALTER TABLE Sellers
DROP
PRIMARY KEY;

-- Change column type
ALTER TABLE Sellers
    MODIFY seller_id VARCHAR (50);

-- Re-add primary key constraint
ALTER TABLE Sellers
    ADD PRIMARY KEY (seller_id);

-- See Sellers table schema
SHOW
CREATE TABLE Sellers;

-- Drop existing primary key constraint
ALTER TABLE Products
DROP
PRIMARY KEY;

-- Change column type
ALTER TABLE Products
    MODIFY product_id VARCHAR (50);

-- Re-add primary key constraint
ALTER TABLE Products
    ADD PRIMARY KEY (product_id);

-- See Products table schema
SHOW
CREATE TABLE Products;

----------------------------------------------------------------------------------------------------

-- Modify foreign key columns to VARCHAR
ALTER TABLE ProductDetails
    MODIFY product_id VARCHAR (50),
    MODIFY seller_id VARCHAR (50);

-- Re-add foreign key constraints with cascading updates
ALTER TABLE ProductDetails
    ADD CONSTRAINT fk_productdetails_products
        FOREIGN KEY (product_id) REFERENCES Products (product_id)
            ON UPDATE CASCADE;

ALTER TABLE ProductDetails
    ADD CONSTRAINT fk_productdetails_sellers
        FOREIGN KEY (seller_id) REFERENCES Sellers (seller_id)
            ON UPDATE CASCADE;

-- See ProductDetails table schema
SHOW
CREATE TABLE ProductDetails;

-- Modify foreign key columns to VARCHAR
ALTER TABLE Orders
    MODIFY order_id VARCHAR(50),
    MODIFY customer_id VARCHAR (50),
    MODIFY product_id VARCHAR (50),
    MODIFY seller_id VARCHAR (50);

-- Re-add foreign key constraints
ALTER TABLE Orders
    ADD CONSTRAINT fk_orders_customers
        FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)
            ON UPDATE CASCADE;

ALTER TABLE Orders
    ADD CONSTRAINT fk_orders_productdetails
        FOREIGN KEY (product_id, seller_id) REFERENCES ProductDetails (product_id, seller_id)
            ON UPDATE CASCADE;

-- See Orders table schema
SHOW
CREATE TABLE Orders;

----------------------------------------------------------------------------------------------------

-- Commit the transaction
COMMIT;