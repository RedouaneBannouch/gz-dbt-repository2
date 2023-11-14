SELECT
orders_id,
date_date,
ROUND(SUM(quantity)) AS quantity,
ROUND(SUM(revenue)) AS revenue,
ROUND(SUM(Purchase_cost)) AS purchase_cost,
ROUND(SUM(margin)) AS margin,
FROM {{ref("int_sales_margin")}}
GROUP BY orders_id, date_date
ORDER BY date_date