SELECT 
  date_trunc (date_date , MONTH) AS date_month ,
  ROUND(SUM(ads_margin), 2) AS ads_margin,
  ROUND(AVG(average_basket), 2) AS avg_average_basket,
  ROUND(SUM(operational_margin), 2) AS operational_margin,
  ROUND(SUM(ads_clicks), 2) AS ads_clicks,
  ROUND(SUM(ads_cost), 2) AS ads_cost,
  ROUND(SUM(ads_impression), 2) AS ads_impression,
  ROUND(SUM(revenue), 2) AS revenue,
  ROUND(SUM(nb_transaction), 2) AS nb_transaction,
FROM {{ref('finance_campaigns_day')}}
GROUP BY date_month