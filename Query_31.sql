/* Query to Find the top 3 customers who have ordered the most products */

SELECT c.customer_id, c.contact_name, c.company_name, COUNT(o.order_id) AS No_of_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY No_of_orders DESC
LIMIT 3;
