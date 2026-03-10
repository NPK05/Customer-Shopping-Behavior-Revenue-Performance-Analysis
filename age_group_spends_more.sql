-- Which customer age groups spend the most money?
SELECT
    age_group,
    COUNT(*) AS total_orders,
    SUM(purchase_amount_usd) AS total_revenue,
    ROUND(AVG(purchase_amount_usd),2) AS avg_order_value
FROM (
    SELECT
        CASE
            WHEN age BETWEEN 18 AND 25 THEN '18-25'
            WHEN age BETWEEN 26 AND 35 THEN '26-35'
            WHEN age BETWEEN 36 AND 45 THEN '36-45'
            WHEN age BETWEEN 46 AND 55 THEN '46-55'
            ELSE '56+'
        END AS age_group,
        purchase_amount_usd
    FROM customer
) t
GROUP BY age_group
ORDER BY total_revenue DESC;