/* Query to Find the customers who have spent more than $5000 in total */

SELECT c.customer_id, c.contact_name, SUM(od.quantity * od.unit_price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
GROUP BY c.customer_id
HAVING total_spent > 5000;
