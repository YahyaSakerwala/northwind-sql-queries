/* Query to Find the order with the highest total cost */

SELECT o.order_id, c.customer_id, c.contact_name, SUM(od.quantity * od.unit_price) AS TotalCost
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN order_details od ON o.order_id = od.order_id
GROUP BY o.order_id, c.customer_id
ORDER BY TotalCost DESC
LIMIT 1;
