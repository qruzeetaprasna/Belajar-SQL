SELECT customer_id, SUM(total_amount) as total_spend 
FROM orders
WHERE status = 'completed'
GROUP BY customer_id
ORDER BY total_spend DESC
LIMIT 5;