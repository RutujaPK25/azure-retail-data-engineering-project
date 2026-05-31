CREATE TABLE Gold_Customers
(
    customer_id VARCHAR(100),
    customer_city VARCHAR(100),
    customer_state VARCHAR(20)
);

CREATE TABLE Gold_Orders
(
    order_id VARCHAR(100),
    customer_id VARCHAR(100),
    order_status VARCHAR(50)
);

CREATE TABLE Gold_Payments
(
    order_id VARCHAR(100),
    payment_type VARCHAR(50),
    payment_installments INT,
    payment_value FLOAT
);

CREATE TABLE Gold_Product
(
    product_id VARCHAR(100),
    product_category_name VARCHAR(200),
    product_name_length INT,
    product_description_length INT,
    product_weight_g FLOAT,
    product_length_cm FLOAT,
    product_heightcm FLOAT,
    product_width_cm FLOAT
);

CREATE TABLE Gold_Customer_Order_Payments
(
    customer_id VARCHAR(100),
    customer_city VARCHAR(100),
    customer_state VARCHAR(20),
    order_id VARCHAR(100),
    order_status VARCHAR(50),
    payment_type VARCHAR(50),
    payment_installments INT,
    payment_value FLOAT
);