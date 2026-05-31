CREATE TABLE DimPayment
(
    PaymentKey INT IDENTITY(1,1) PRIMARY KEY,
    payment_type VARCHAR(50)
);

INSERT INTO DimPayment
(
    payment_type
)
SELECT DISTINCT
       payment_type
FROM Gold_Payments;