-- Exploratory SQL Queries for E-Commerce Sales Analytics
-- Database: SQLite (retail_analytics.db)

-- ==================================================
-- 1. DATA OVERVIEW
-- ==================================================

-- Total number of transactions
SELECT COUNT(*) as total_transactions 
FROM transactions;

-- Date range of data
SELECT 
    MIN(InvoiceDate) as start_date,
    MAX(InvoiceDate) as end_date
FROM transactions;

-- Unique customers
SELECT COUNT(DISTINCT Customer_ID) as unique_customers 
FROM transactions;

-- ==================================================
-- 2. SALES ANALYSIS
-- ==================================================

-- Top 10 countries by revenue
SELECT 
    Country,
    COUNT(*) as order_count,
    SUM(Quantity * Price) as total_revenue
FROM transactions
WHERE Quantity > 0
GROUP BY Country
ORDER BY total_revenue DESC
LIMIT 10;

-- Monthly revenue trends
SELECT 
    strftime('%Y-%m', InvoiceDate) as YearMonth,
    COUNT(DISTINCT InvoiceNo) as total_orders,
    COUNT(DISTINCT Customer_ID) as unique_customers,
    SUM(Quantity) as total_units_sold,
    ROUND(SUM(Quantity * Price), 2) as total_revenue,
    ROUND(AVG(Quantity * Price), 2) as avg_order_value
FROM transactions
WHERE Quantity > 0
GROUP BY YearMonth
ORDER BY YearMonth;

-- ==================================================
-- 3. PRODUCT ANALYSIS
-- ==================================================

-- Top 20 products by revenue
SELECT 
    StockCode,
    Description,
    COUNT(DISTINCT Customer_ID) as unique_buyers,
    SUM(Quantity) as total_quantity,
    ROUND(SUM(Quantity * Price), 2) as total_revenue
FROM transactions
WHERE Quantity > 0
GROUP BY StockCode, Description
ORDER BY total_revenue DESC
LIMIT 20;

-- Products with highest cancellation rates
SELECT 
    StockCode,
    Description,
    COUNT(*) as total_orders,
    SUM(CASE WHEN Quantity < 0 THEN 1 ELSE 0 END) as cancellations,
    ROUND(100.0 * SUM(CASE WHEN Quantity < 0 THEN 1 ELSE 0 END) / COUNT(*), 2) as cancellation_rate
FROM transactions
GROUP BY StockCode, Description
HAVING COUNT(*) > 50
ORDER BY cancellation_rate DESC
LIMIT 20;

-- ==================================================
-- 4. CUSTOMER ANALYSIS
-- ==================================================

-- Customer Lifetime Value (Top 100)
SELECT 
    Customer_ID,
    COUNT(DISTINCT InvoiceNo) as total_orders,
    SUM(Quantity) as total_items_purchased,
    ROUND(SUM(Quantity * Price), 2) as lifetime_value,
    ROUND(AVG(Quantity * Price), 2) as avg_order_value,
    MIN(InvoiceDate) as first_purchase,
    MAX(InvoiceDate) as last_purchase
FROM transactions
WHERE Quantity > 0
GROUP BY Customer_ID
ORDER BY lifetime_value DESC
LIMIT 100;

-- Customer purchase frequency distribution
SELECT 
    purchase_frequency,
    COUNT(*) as customer_count
FROM (
    SELECT 
        Customer_ID,
        COUNT(DISTINCT InvoiceNo) as purchase_frequency
    FROM transactions
    WHERE Quantity > 0
    GROUP BY Customer_ID
)
GROUP BY purchase_frequency
ORDER BY purchase_frequency;
