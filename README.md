Azure Retail Data Engineering Project

Project Overview

Built an end-to-end Azure Data Engineering solution using Azure Data Factory, Azure Data Lake Storage Gen2, Azure SQL Database, SQL, and Power BI.

Architecture

Retail CSV Files
→ Azure Data Lake Gen2 (Bronze Layer)
→ Azure Data Factory
→ Silver Layer
→ Gold Layer
→ Azure SQL Database
→ Star Schema Data Warehouse
→ Power BI Dashboard

Technologies Used

* Azure Data Factory
* Azure Data Lake Storage Gen2
* Azure SQL Database
* SQL
* GitHub
* Power BI

Data Warehouse

Dimension Tables

* DimCustomer (99,441 records)
* DimProduct (32,951 records)
* DimPayment (5 records)

Fact Table

* FactSales (207,772 records)

ADF Pipelines

* PL_Bronze_Ingestion
* PL_Gold

Data Flows

* DF_Customers_Gold
* DF_Orders_Gold
* DF_Payments_Gold
* DF_Products_Gold
* DF_Customer_Order_Gold
* DF_Customer_Order_Payment_Gold

Business Outcome

Created a scalable retail analytics platform that ingests raw CSV files, transforms data through Bronze, Silver and Gold layers, loads a dimensional data warehouse, and enables reporting through Power BI.