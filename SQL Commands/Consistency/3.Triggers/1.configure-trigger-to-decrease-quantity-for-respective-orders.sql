-- Drop the procedure if it exists
DROP PROCEDURE IF EXISTS decrease_quantity;

DELIMITER //

CREATE PROCEDURE decrease_quantity(
    IN prod_id VARCHAR (50),
    IN sell_id VARCHAR (50),
    IN order_qty INT
)
BEGIN
    DECLARE
available_qty INT DEFAULT 0;
    DECLARE
product_name VARCHAR(255);
    DECLARE
seller_name VARCHAR(255);
    DECLARE
error_message VARCHAR(255);

    -- Get the product name
SELECT name
INTO product_name
FROM Products
WHERE product_id = prod_id;

-- Get the seller name
SELECT name
INTO seller_name
FROM Sellers
WHERE seller_id = sell_id;

-- Check if the product and seller combination exists in ProductDetails
SELECT IFNULL(quantity, 0)
INTO available_qty
FROM ProductDetails
WHERE product_id = prod_id
  AND seller_id = sell_id;

-- If no record is found, available_qty will be 0
IF
available_qty = 0 THEN
        -- Prepare the error message
        SET error_message = CONCAT('The seller ', seller_name, ' does not sell the product ', product_name, '.');

        -- Raise an error
        SIGNAL
SQLSTATE '45000'
        SET MESSAGE_TEXT = error_message;
ELSE
        -- Check if the available quantity is sufficient
        IF available_qty >= order_qty THEN
            -- Decrease the quantity
UPDATE ProductDetails
SET quantity = quantity - order_qty
WHERE product_id = prod_id
  AND seller_id = sell_id;
ELSE
            -- Prepare the error message
            SET error_message = CONCAT('Only ', available_qty, ' units of ', product_name, ' sold by ', seller_name, ' are available to order.');

            -- Raise an error if the quantity is insufficient
            SIGNAL
SQLSTATE '45000'
            SET MESSAGE_TEXT = error_message;
END IF;
END IF;
END
//

DELIMITER ;

-- Drop the trigger if it exists
DROP TRIGGER IF EXISTS before_order_insert;

DELIMITER //

CREATE TRIGGER before_order_insert
    BEFORE INSERT
    ON Orders
    FOR EACH ROW
BEGIN
    -- Call the stored procedure to decrease the quantity
    CALL decrease_quantity(NEW.product_id, NEW.seller_id, NEW.quantity);
END//

DELIMITER ;

-- See all triggers
SHOW
TRIGGERS;