-- Which product categories are most popular among subscribed customers?
SELECT
    category,
    COUNT(*) AS total_orders,
    SUM(purchase_amount_usd) AS total_revenue,
    ROUND(AVG(purchase_amount_usd),2) AS avg_order_value
FROM customer
WHERE subscription_status = 'Yes'
GROUP BY category
ORDER BY total_revenue DESC;