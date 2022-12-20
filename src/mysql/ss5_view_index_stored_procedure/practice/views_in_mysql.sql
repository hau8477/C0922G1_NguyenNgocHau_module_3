USE
classicmodels;

CREATE VIEW customer_views AS
SELECT customerNumber, customerName, phone
FROM customers;

SELECT *
FROM customer_views;