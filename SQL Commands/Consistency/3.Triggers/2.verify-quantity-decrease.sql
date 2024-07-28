-- Insert data into orders table
INSERT INTO Orders (order_id, customer_id, product_id, seller_id, order_date, quantity)
VALUES ('Order_1', 'Customer_1', 'Product_1', 'Seller_1', '2024-07-01', 2),
       ('Order_2', 'Customer_1', 'Product_2', 'Seller_1', '2024-07-02', 3),
       ('Order_3', 'Customer_1', 'Product_3', 'Seller_2', '2024-07-03', 1),
       ('Order_4', 'Customer_2', 'Product_4', 'Seller_2', '2024-07-04', 5),
       ('Order_5', 'Customer_2', 'Product_5', 'Seller_3', '2024-07-05', 2),
       ('Order_6', 'Customer_2', 'Product_6', 'Seller_3', '2024-07-06', 4),
       ('Order_7', 'Customer_3', 'Product_7', 'Seller_4', '2024-07-07', 3),
       ('Order_8', 'Customer_3', 'Product_8', 'Seller_4', '2024-07-08', 1),
       ('Order_9', 'Customer_4', 'Product_9', 'Seller_5', '2024-07-09', 2),
       ('Order_10', 'Customer_4', 'Product_10', 'Seller_5', '2024-07-10', 3),
       ('Order_11', 'Customer_5', 'Product_1', 'Seller_6', '2024-07-11', 2),
       ('Order_12', 'Customer_5', 'Product_2', 'Seller_7', '2024-07-12', 1),
       ('Order_13', 'Customer_6', 'Product_3', 'Seller_8', '2024-07-13', 4),
       ('Order_14', 'Customer_7', 'Product_4', 'Seller_9', '2024-07-14', 2),
       ('Order_15', 'Customer_8', 'Product_5', 'Seller_10', '2024-07-15', 5),
       ('Order_16', 'Customer_9', 'Product_6', 'Seller_11', '2024-07-16', 3),
       ('Order_17', 'Customer_10', 'Product_7', 'Seller_12', '2024-07-17', 1),
       ('Order_18', 'Customer_10', 'Product_8', 'Seller_13', '2024-07-18', 2),
       ('Order_19', 'Customer_10', 'Product_9', 'Seller_14', '2024-07-19', 4),
       ('Order_20', 'Customer_10', 'Product_10', 'Seller_15', '2024-07-20', 5);

-- See records in Orders table
SELECT *
FROM Orders;

-- See records in ProduceDetails table
SELECT *
FROM ProductDetails;