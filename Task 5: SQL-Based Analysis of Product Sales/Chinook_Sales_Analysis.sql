-- ==========================================
-- TASK 5: SQL-BASED PRODUCT SALES ANALYSIS
-- Database: Chinook
-- Tool: MySQL Workbench
-- ==========================================

-- Database SETUP
CREATE DATABASE chinook;
Use chinook;

-- Check that the database loaded correctly
SHOW TABLES;

-- Check the data
SELECT * FROM artist LIMIT 10;
SELECT * FROM album LIMIT 10;
SELECT * FROM track LIMIT 10;
SELECT * FROM invoice LIMIT 10;
SELECT * FROM invoiceline LIMIT 10;

-- Check the number of records
SELECT 'Artist' AS Table_Name, COUNT(*) AS Row_Count
FROM artist

UNION ALL

SELECT 'Album', COUNT(*)
FROM album

UNION ALL

SELECT 'Track', COUNT(*)
FROM track

UNION ALL

SELECT 'Customer', COUNT(*)
FROM customer

UNION ALL

SELECT 'Invoice', COUNT(*)
FROM invoice

UNION ALL

SELECT 'InvoiceLine', COUNT(*)
FROM invoiceline;

-- Business Question 1: What are the top-selling products?
SELECT
    t.TrackId,
    t.Name AS Product_Name,
    SUM(il.Quantity) AS Units_Sold,
    SUM(il.Quantity * il.UnitPrice) AS Revenue
FROM track t
JOIN invoiceline il
    ON t.TrackId = il.TrackId
GROUP BY
    t.TrackId,
    t.Name
ORDER BY
    Revenue DESC;
    
-- Show only the Top 10 products
SELECT
    t.TrackId,
    t.Name AS Product_Name,
    SUM(il.Quantity) AS Units_Sold,
    SUM(il.Quantity * il.UnitPrice) AS Revenue
FROM track t
JOIN invoiceline il
    ON t.TrackId = il.TrackId
GROUP BY
    t.TrackId,
    t.Name
ORDER BY
    Revenue DESC
LIMIT 10;

-- Business Question 2: Which products sold the most units?
SELECT
    t.Name AS Product_Name,
    SUM(il.Quantity) AS Units_Sold
FROM track t
JOIN invoiceline il
    ON t.TrackId = il.TrackId
GROUP BY
    t.TrackId,
    t.Name
ORDER BY
    Units_Sold DESC
LIMIT 10;

-- Business Question 3: What is total revenue?
SELECT
    ROUND(SUM(Quantity * UnitPrice), 2) AS Total_Revenue
FROM invoiceline;

-- Business Question 4: Revenue by country/region
SELECT
    i.BillingCountry AS Country,
    ROUND(SUM(il.Quantity * il.UnitPrice), 2) AS Revenue
FROM invoice i
JOIN invoiceline il
    ON i.InvoiceId = il.InvoiceId
GROUP BY
    i.BillingCountry
ORDER BY
    Revenue DESC;
    
-- Top 10 countries by revenue
SELECT
    i.BillingCountry AS Country,
    ROUND(SUM(il.Quantity * il.UnitPrice), 2) AS Revenue
FROM invoice i
JOIN invoiceline il
    ON i.InvoiceId = il.InvoiceId
GROUP BY
    i.BillingCountry
ORDER BY
    Revenue DESC
LIMIT 10;

-- Business Question 5: Monthly sales performance
SELECT
    YEAR(i.InvoiceDate) AS Sales_Year,
    MONTH(i.InvoiceDate) AS Sales_Month,
    ROUND(SUM(il.Quantity * il.UnitPrice), 2) AS Revenue
FROM invoice i
JOIN invoiceline il
    ON i.InvoiceId = il.InvoiceId
GROUP BY
    YEAR(i.InvoiceDate),
    MONTH(i.InvoiceDate)
ORDER BY
    Sales_Year,
    Sales_Month;
    
-- Business Question 6: Which artists generate the most revenue?
SELECT
    ar.ArtistId,
    ar.Name AS Artist,
    ROUND(SUM(il.Quantity * il.UnitPrice), 2) AS Revenue
FROM artist ar
JOIN album al
    ON ar.ArtistId = al.ArtistId
JOIN track t
    ON al.AlbumId = t.AlbumId
JOIN invoiceline il
    ON t.TrackId = il.TrackId
GROUP BY
    ar.ArtistId,
    ar.Name
ORDER BY
    Revenue DESC
LIMIT 10;

-- Business Question 7: Which genres generate the most revenue?
SELECT
    g.Name AS Genre,
    ROUND(SUM(il.Quantity * il.UnitPrice), 2) AS Revenue
FROM genre g
JOIN track t
    ON g.GenreId = t.GenreId
JOIN invoiceline il
    ON t.TrackId = il.TrackId
GROUP BY
    g.GenreId,
    g.Name
ORDER BY
    Revenue DESC;
    
-- Business Question 8: Average order value
SELECT
    ROUND(AVG(Total), 2) AS Average_Order_Value
FROM invoice;

-- Business Question 9: Top customers
SELECT
    c.CustomerId,
    CONCAT(c.FirstName, ' ', c.LastName) AS Customer_Name,
    ROUND(SUM(i.Total), 2) AS Total_Spent
FROM customer c
JOIN invoice i
    ON c.CustomerId = i.CustomerId
GROUP BY
    c.CustomerId,
    c.FirstName,
    c.LastName
ORDER BY
    Total_Spent DESC
LIMIT 10;

-- BONUS: Window Function
-- Rank Products by Revenue
SELECT
    Product_Name,
    Revenue,
    RANK() OVER (
        ORDER BY Revenue DESC
    ) AS Revenue_Rank
FROM (
    SELECT
        t.Name AS Product_Name,
        SUM(il.Quantity * il.UnitPrice) AS Revenue
    FROM track t
    JOIN invoiceline il
        ON t.TrackId = il.TrackId
    GROUP BY
        t.TrackId,
        t.Name
) AS Product_Sales;

