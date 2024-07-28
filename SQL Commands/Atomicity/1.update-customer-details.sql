-- Begin the transaction
START TRANSACTION;

-- Update customer_id 1's name and email
UPDATE Customers
SET name  = 'Alica',
    email = 'alica@example.com'
WHERE customer_id = 1;

-- Commit the transaction
COMMIT;

-- show customer details
SELECT *
FROM Customers;
