-- What seasonal trends exist in customer purchasing behavior?
SELECT
    season,
    COUNT(*) AS total_orders,
    SUM(purchase_amount_usd) AS total_revenue,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_order_value
FROM customer
GROUP BY season
ORDER BY total_revenue DESC;