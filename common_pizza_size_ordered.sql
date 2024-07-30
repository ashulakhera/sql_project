-- Identify the most common pizza size ordered.

SELECT 
    size, COUNT(*) AS order_count
FROM
    pizzas
GROUP BY size
ORDER BY order_count DESC
LIMIT 1;