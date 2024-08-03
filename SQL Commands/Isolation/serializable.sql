-- Set Isolation level to Read committed. Do it in both open terminals.
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- Check Transaction Isolation level. Check in both terminals.
SELECT @@transaction_ISOLATION;

-- Transaction 1
START TRANSACTION;

-- Transaction 2
START TRANSACTION;

-- Transaction 1
UPDATE Customers SET email = 'eve@example.com' where customer_id = 'Customer_5';

-- Transaction 2
SELECT * from Customers;

-- Transaction 1
COMMIT;

-- Transaction 2
COMMIT;