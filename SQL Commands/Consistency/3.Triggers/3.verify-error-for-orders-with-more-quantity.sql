-- Try to insert wrong data. (Seller_7 does not sell Product_1)
INSERT INTO Orders (order_id, customer_id, product_id, seller_id, order_date, quantity) VALUES
    ('Order_21', 'Customer_6', 'Product_1', 'Seller_7', '2024-07-28', 1);

-- Try to insert order with quantity 0
INSERT INTO Orders (order_id, customer_id, product_id, seller_id, order_date, quantity) VALUES
    ('Order_21', 'Customer_6', 'Product_1', 'Seller_6', '2024-07-28', 0);

-- Try to buy more than available quantity.
INSERT INTO Orders (order_id, customer_id, product_id, seller_id, order_date, quantity) VALUES
    ('Order_21', 'Customer_6', 'Product_1', 'Seller_6', '2024-07-28', 99);