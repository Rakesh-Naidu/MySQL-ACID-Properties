-- Begin the transaction
START TRANSACTION;

-- Update product 1's price sold by seller 6 to 9.99
UPDATE ProductDetails
SET price = 9.99
WHERE product_id = 1
  AND seller_id = 6;

-- Commit the transaction
COMMIT;

-- show product details
SELECT *
FROM ProductDetails;