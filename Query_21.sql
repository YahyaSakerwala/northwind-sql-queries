/* Query to Get the list of customers who have ordered ‘Chai’ product */

SELECT c.customer_id, c.contact_name, p.product_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
WHERE p.product_name = 'Chai';
