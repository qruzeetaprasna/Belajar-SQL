SELECT customer_id, SUM(total_amount) as total_spend 
FROM orders
WHERE status = 'completed'
GROUP BY customer_id
HAVING total_spend > 10000000
ORDER BY total_spend DESC;