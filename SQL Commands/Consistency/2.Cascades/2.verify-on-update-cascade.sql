-- Begin Transaction
BEGIN;

-- Update customer_id values
UPDATE Customers
SET customer_id = CONCAT('Customer_', customer_id);

-- Update seller_id values
UPDATE Sellers
SET seller_id = CONCAT('Seller_', seller_id);

-- Update product_id values
UPDATE Products
SET product_id = CONCAT('Product_', product_id);

-- show Customers table
SELECT *
FROM Customers;

-- show Sellers table
SELECT *
FROM Sellers;

-- show Products table
SELECT *
FROM Products;

-- show ProductDetails table
SELECT *
FROM ProductDetails;

-- Commit the transaction
COMMIT;