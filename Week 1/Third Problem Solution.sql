USE dannys_dinner;

-- What was the first item form the menu purchased by each customer


SELECT DISTINCT(customer_id), product_name FROM 
(
		SELECT 
				DISTINCT(A.customer_id),
				A.order_date,
				B.product_name,
		ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date) AS ranking
			FROM 
				sales AS A
		INNER JOIN 
				menu AS B
		ON A.product_id = B.product_id
) t
WHERE t.ranking = 1;

