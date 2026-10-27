SELECT 
    c.customer_name, 
    c.city, 
    COALESCE(SUM(o.total_amount), 0) AS total_completed_amount
FROM customers c
LEFT JOIN orders o 
    ON o.customer_id = c.customer_id 
    AND o.status = 'completed'
WHERE c.city = 'Jakarta'
GROUP BY c.customer_id, c.customer_name, c.city;