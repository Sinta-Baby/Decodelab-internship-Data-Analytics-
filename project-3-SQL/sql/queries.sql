-- ===========================================
-- Project 3 : SQL Data Analysis
-- DecodeLab Internship
-- ===========================================

-- Display all records
SELECT * FROM sales;

-- Display Customer ID and Product
SELECT CustomerID, Product
FROM sales;

-- Display first 10 records
SELECT *
FROM sales
LIMIT 10;

-- Orders where quantity is greater than 3
SELECT *
FROM sales
WHERE Quantity > 3;

-- Shipped orders
SELECT *
FROM sales
WHERE OrderStatus = 'Shipped';

-- Sort by Total Price (Highest First)
SELECT *
FROM sales
ORDER BY TotalPrice DESC;

-- Total number of orders
SELECT COUNT(*) AS Total_Orders
FROM sales;

-- Total Revenue
SELECT SUM(TotalPrice) AS Total_Revenue
FROM sales;

-- Average Order Value
SELECT AVG(TotalPrice) AS Average_Order_Value
FROM sales;

-- Top 5 Selling Products
SELECT Product,
COUNT(*) AS Orders
FROM sales
GROUP BY Product
ORDER BY Orders DESC
LIMIT 5;

-- Revenue by Product
SELECT Product,
SUM(TotalPrice) AS Revenue
FROM sales
GROUP BY Product
ORDER BY Revenue DESC;

-- Orders by Payment Method
SELECT PaymentMethod,
COUNT(*) AS Total_Orders
FROM sales
GROUP BY PaymentMethod;

-- Orders by Status
SELECT OrderStatus,
COUNT(*) AS Total_Orders
FROM sales
GROUP BY OrderStatus;

-- Customers Using Coupons
SELECT CustomerID,
CouponCode
FROM sales
WHERE CouponCode <> '';

-- Average Quantity Purchased
SELECT AVG(Quantity) AS Average_Quantity
FROM sales;

-- Top 10 Highest Value Orders
SELECT *
FROM sales
ORDER BY TotalPrice DESC
LIMIT 10;
