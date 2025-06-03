-- Create table
CREATE TABLE online_sales (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_date TEXT,
    amount REAL,
    product_id INTEGER
);

-- Insert data
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-15', 100.00, 101),
(2, '2023-01-20', 150.00, 102),
(3, '2023-02-05', 200.00, 101),
(4, '2023-02-10', 120.00, 103),
(5, '2023-03-15', 300.00, 102),
(6, '2023-03-20', 180.00, 104),
(7, '2023-04-02', 250.00, 105),
(8, '2023-04-20', 310.00, 106);

-- Monthly revenue and order volume
SELECT
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

-- Top 3 months by revenue
SELECT
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM online_sales
GROUP BY year, month
ORDER BY monthly_revenue DESC
LIMIT 3;
