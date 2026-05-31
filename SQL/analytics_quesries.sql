-- Total Revenue

SELECT
SUM(payment_value) AS TotalRevenue
FROM FactSales;


-- Total Transactions

SELECT
COUNT(*) AS TotalTransactions
FROM FactSales;


-- Revenue By Payment Type

SELECT
dp.payment_type,
SUM(fs.payment_value) AS Revenue
FROM FactSales fs
JOIN DimPayment dp
ON fs.PaymentKey = dp.PaymentKey
GROUP BY dp.payment_type
ORDER BY Revenue DESC;


-- Customers By State

SELECT
customer_state,
COUNT(*) AS TotalCustomers
FROM DimCustomer
GROUP BY customer_state
ORDER BY TotalCustomers DESC;


-- Top 10 Customers

SELECT TOP 10
customer_id,
customer_city,
customer_state
FROM DimCustomer;


-- Fact Table Count

SELECT COUNT(*)
FROM FactSales;