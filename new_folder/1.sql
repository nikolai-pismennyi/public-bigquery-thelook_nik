SELECT
  EXTRACT(YEAR FROM created_at) AS year,
  EXTRACT(WEEK FROM created_at) AS week,
  COUNT(*) AS total_orders,
  SUM(CASE WHEN status = 'returned' THEN 1 ELSE 0 END) AS returned_orders,
  SUM(CASE WHEN status = 'returned' THEN 1 ELSE 0 END) / NULLIF(SUM(CASE WHEN status = 'returned' THEN 1 ELSE 0 END), 0) AS return_rate
FROM thelook_ecommerce.order_items
GROUP BY 1, 2
ORDER BY 1, 2