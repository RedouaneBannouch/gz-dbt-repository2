SELECT 
    orders_id,
    date_date,
    quantity,
    revenue,
    ROUND((s.quantity * p.Purchase_price),2) AS Purchase_cost,
    ROUND((s.revenue - (s.quantity * p.Purchase_price)),2) AS Margin,
    {{ margin_percent('s.revenue', ('s.quantity * p.Purchase_price'), precision = 2 )}} AS margin_percent
FROM  {{ ref("stg_raw__sales")}} s
JOIN {{ ref("stg_raw__product")}} p
on s.products_id = p.products_id
ORDER BY date_date