CREATE TABLE FactSales
(
    SalesKey BIGINT IDENTITY(1,1) PRIMARY KEY,

    CustomerKey INT,
    PaymentKey INT,

    order_id VARCHAR(100),

    payment_value DECIMAL(18,2),

    FOREIGN KEY(CustomerKey)
        REFERENCES DimCustomer(CustomerKey),

    FOREIGN KEY(PaymentKey)
        REFERENCES DimPayment(PaymentKey)
);

INSERT INTO FactSales
(
    CustomerKey,
    PaymentKey,
    order_id,
    payment_value
)
SELECT
    dc.CustomerKey,
    dp.PaymentKey,
    g.order_id,
    g.payment_value
FROM Gold_Customer_Order_Payments g
JOIN DimCustomer dc
    ON g.customer_id = dc.customer_id
JOIN DimPayment dp
    ON g.payment_type = dp.payment_type;