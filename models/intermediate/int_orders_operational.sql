select orders_id,
date_date,
sum(revenue) revenue,
sum (quantity) quantity,
sum (purchase_cost) purchase_cost,
sum (margin) margin,
   round(sum(o.margin + sh.shipping_fee - sh.logcost - sh.ship_cost), 2) as operational_margin
from {{ ref("int_orders_margin") }} o
JOIN {{ ref("stg_raw__ship")}} sh
USING (orders_id)
GROUP BY date_date, orders_id