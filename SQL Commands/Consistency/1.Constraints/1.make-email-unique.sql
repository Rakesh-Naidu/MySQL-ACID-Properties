-- Add unique constraint to email column in Customers table
ALTER TABLE Customers
    ADD CONSTRAINT unique_email UNIQUE (email);

-- Try to insert a new row with the same email as Bob
INSERT INTO Customers (customer_id, name, email, status)
VALUES (11, 'John', 'bob@example.com', 'Active');

-- Show customer details
SELECT *
FROM Customers;