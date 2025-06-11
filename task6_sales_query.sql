
-- Monthly Sales Trend Analysis

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
