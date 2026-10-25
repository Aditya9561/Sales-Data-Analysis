USE sales_analysis;

SELECT * FROM sales
LIMIT 10;

SELECT COUNT(*) AS
total_orders
FROM sales;

SELECT ROUND(SUM(Sales), 2)
AS total_sales
FROM sales;

SELECT 
	Region,
    ROUND(SUM(Sales), 2) AS
total_sales
FROM sales
GROUP BY Region
ORDER BY total_sales DESC;

SELECT 
	`Customer_Name`,
    COUNT(*) AS total_orders,
    ROUND(SUM(Sales), 2) AS total_spent
FROM sales
GROUP BY `Customer_Name`
ORDER BY total_spent DESC
LIMIT 10;

SELECT
	Product,
    SUM(Quantity) AS total_quantity_sold,
    ROUND(SUM(Sales), 2) AS total_sales
FROM sales 
GROUP BY Product
ORDER BY total_sales DESC;

SELECT 
	Month,
    ROUND(SUM(Sales), 2) AS total_sales,
    COUNT(*) AS total_orders
FROM sales 
GROUP BY month
ORDER BY total_sales DESC;

SELECT 
	`Payment_Mode`



















