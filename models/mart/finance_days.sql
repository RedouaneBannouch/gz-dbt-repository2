SELECT
date_date,
count(orders_id) AS nb_transaction,
round(sum(revenue),2) as revenue,
round(safe_divide(sum(revenue),count(orders_id)),2) as average_basket,
round(sum(margin),2) as margin,
round(sum(operational_margin),2) as operational_margin
from {{ref("int_orders_operational")}}
group by date_date
order by date_date DESC