USE dannys_dinner;

-- 2. How many days has each customer visited the restaurant ?

SELECT 
	customer_id, 
    COUNT(order_date) AS Total_visits
FROM sales
GROUP BY customer_id;