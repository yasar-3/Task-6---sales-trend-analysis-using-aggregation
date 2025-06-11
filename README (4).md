
# Task 6: Sales Trend Analysis Using SQL Aggregations

## Objective
Analyze monthly revenue and order volume from the `online_sales` dataset.

## Approach
We used SQL to extract the year and month from the `order_date`, and applied aggregate functions to calculate:
- Total monthly revenue using `SUM(amount)`
- Total monthly order count using `COUNT(DISTINCT order_id)`

## Sample SQL Query

```sql
SELECT 
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders
FROM 
  online_sales
GROUP BY 
  year, month
ORDER BY 
  year, month;
```

## Output
See the attached CSV: `monthly_sales_summary.csv`

## Notes
- NULLs in `amount` are handled automatically by `SUM()` (they’re ignored).
- `ORDER BY` helps in sorting the output chronologically.

## Prepared By
YASAR ANIS
