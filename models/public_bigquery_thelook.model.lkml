SELECT
  *
FROM (
  SELECT
    user_id,
    RANK() OVER (PARTITION BY user_id ORDER BY created_at) AS user_id_rank
  FROM bigquery-public-data.thelook_ecommerce.orders
) AS T
WHERE user_id_rank = 1