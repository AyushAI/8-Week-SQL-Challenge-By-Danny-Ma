USE dannys_dinner;

-- 1. What is the total amnount each customer spent at the restraunt
SELECT * FROM members;

SELECT A.customer_id, SUM(B.price) AS total_customer_spent
	FROM sales AS A
INNER JOIN menu AS B
	ON A.product_id = B.product_id
	GROUP BY customer_id;


SELECT * FROM members;