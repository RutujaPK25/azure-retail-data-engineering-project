CREATE TABLE DimProduct
(
    ProductKey INT IDENTITY(1,1) PRIMARY KEY,
    product_id VARCHAR(100),
    product_category_name VARCHAR(200),
    product_weight_g FLOAT,
    product_length_cm FLOAT,
    product_height_cm FLOAT,
    product_width_cm FLOAT
);

INSERT INTO DimProduct
(
    product_id,
    product_category_name,
    product_weight_g,
    product_length_cm,
    product_height_cm,
    product_width_cm
)
SELECT
    product_id,
    product_category_name,
    product_weight_g,
    product_length_cm,
    product_heightcm,
    product_width_cm
FROM Gold_Product;