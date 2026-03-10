-- Do subscribed customers spend more than non-subscribed customers?
SELECT
    subscription_status,
    COUNT(*) AS total_orders,
    SUM(purchase_amount_usd) AS total_revenue,
    ROUND(AVG(purchase_amount_usd),2) AS avg_order_value
FROM customer
GROUP BY subscription_status
ORDER BY total_revenue DESC;