-- Do customers who use discounts or promo codes spend more than those who don’t?
SELECT
    discount_applied,
    COUNT(*) AS total_orders,
    SUM(purchase_amount_usd) AS total_revenue,
    ROUND(AVG(purchase_amount_usd), 2) AS avg_order_value
FROM customer
GROUP BY discount_applied
ORDER BY avg_order_value DESC;