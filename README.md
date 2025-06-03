# Task 6 - Sales Trend Analysis Using Aggregations

## 🔍 Objective
Analyze monthly revenue and order volume from online sales using SQL.

## 🛠 Tools Used
- SQLite (DB Browser for SQLite)

## 📁 Dataset Description
Table: `online_sales`

| Column       | Type    | Description                    |
|--------------|---------|--------------------------------|
| order_id     | INTEGER | Order ID (Primary Key)         |
| order_date   | TEXT    | Date of order (YYYY-MM-DD)     |
| amount       | REAL    | Order revenue                  |
| product_id   | INTEGER | Product ID                     |

## 📊 SQL Analysis
- Grouped by year and month using `strftime()`
- Revenue: `SUM(amount)`
- Order Volume: `COUNT(DISTINCT order_id)`
- Sorted and filtered to get top 3 months

## 📄 Files Included
- `task6_sales_analysis.sql`: All queries
- `monthly_sales_results.csv`: Final output table
- `README.md`: Explanation of the task
