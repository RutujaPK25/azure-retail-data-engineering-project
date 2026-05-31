CREATE TABLE DimCustomer
(
    CustomerKey INT IDENTITY(1,1) PRIMARY KEY,
    customer_id VARCHAR(100),
    customer_city VARCHAR(100),
    customer_state VARCHAR(20)
);

INSERT INTO DimCustomer
(
    customer_id,
    customer_city,
    customer_state
)
SELECT DISTINCT
       customer_id,
       customer_city,
       customer_state
FROM Gold_Customers;