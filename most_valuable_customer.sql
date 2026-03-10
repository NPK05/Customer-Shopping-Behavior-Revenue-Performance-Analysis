-- Which products and product categories generate the highest revenue?
SELECT
    category,
    item_purchased,
    COUNT(*) AS total_orders,
    SUM(purchase_amount_usd) AS total_revenue,
    ROUND(AVG(purchase_amount_usd),2) AS avg_order_value
FROM customer
GROUP BY category, item_purchased
ORDER BY total_revenue DESC
LIMIT 10;