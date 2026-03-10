-- Which products have the highest customer satisfaction (review ratings)?
SELECT
    item_purchased,
    category,
    ROUND(AVG(review_rating)::numeric, 2) AS avg_rating,
    COUNT(*) AS total_reviews,
    SUM(purchase_amount_usd) AS total_revenue
FROM customer
GROUP BY item_purchased, category
ORDER BY avg_rating DESC, total_reviews DESC
LIMIT 10;