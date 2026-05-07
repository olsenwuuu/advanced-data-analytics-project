-- ==========================================
-- File: Changes Over Time.sql
-- Purpose: Analyze sales performance and customer acquisition trends over time.
-- ==========================================

-- ------------------------------------------
-- 1. Monthly Sales Performance
-- ------------------------------------------
-- Aggregates sales and customer metrics by year and month. 
SELECT
	YEAR(order_date) AS order_year,
	MONTH(order_date) AS order_month,
	SUM(sales_amount) AS total_sales,
	COUNT(DISTINCT customer_key) AS total_customers,
	SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date), MONTH(order_date);

-- ------------------------------------------
-- 2. Time-Series Monthly Sales Performance 
-- ------------------------------------------
-- Aggregates metrics by month while preserving the date data type (e.g., '2026-04-01'). 
SELECT
	DATETRUNC(month, order_date) AS order_date,
	SUM(sales_amount) AS total_sales,
	COUNT(DISTINCT customer_key) AS total_customers,
	SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(month, order_date)
ORDER BY DATETRUNC(month, order_date)

-- ------------------------------------------
-- 3. Formatted Monthly Sales Performance
-- ------------------------------------------
-- Reformatted Dates for Readability. Best used for presentation tables.
SELECT
	FORMAT(order_date, 'yyyy-MMM') AS order_date,
	SUM(sales_amount) AS total_sales,
	COUNT(DISTINCT customer_key) AS total_customers,
	SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY FORMAT(order_date, 'yyyy-MMM')
ORDER BY FORMAT(order_date, 'yyyy-MMM')

-- ------------------------------------------
-- 4. Customer Acquisition Trend
-- ------------------------------------------
-- Calculates how many new customers were added each year
SELECT
	DATETRUNC(year, create_date) AS create_year,
	COUNT(customer_key) AS total_customer
FROM gold.dim_customers
GROUP BY DATETRUNC(year, create_date)
ORDER BY DATETRUNC(year, create_date)