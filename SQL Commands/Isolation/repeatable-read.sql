-- Setting autocommit to 0.
SET autocommit=0;

-- Check Transaction Isolation level.
SELECT @@transaction_ISOLATION;

-- Transaction 1
START TRANSACTION;

-- Transaction 2
START TRANSACTION;

-- Transaction 1
SELECT * from Customers;

-- Transaction 2
SELECT * from Customers;

-- Transaction 1
UPDATE Customers SET email = 'eve11@example.com' where customer_id = 'Customer_5';

-- Transaction 1
SELECT * from Customers;

-- Transaction 2
SELECT * from Customers;

-- Transaction 1
COMMIT;

-- Transaction 2
SELECT * from Customers;

-- Transaction 2
COMMIT;