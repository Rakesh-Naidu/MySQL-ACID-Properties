-- Begin the transaction
START TRANSACTION;

-- Decrease quantity of product_id = 1, seller_id = 6 by 10
UPDATE ProductDetails
SET quantity = quantity - 2
WHERE product_id = 1
  AND seller_id = 6;

-- show product details
SELECT *
FROM ProductDetails;

-- Rollback the transaction
ROLLBACK;

-- show product details
SELECT *
FROM ProductDetails;