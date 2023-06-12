/* Query to Find the customers who have not placed any orders */

/* Method 1: */
SELECT c.customer_id, c.contact_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

/* Method 2: */
SELECT c.customer_id, c.contact_name
FROM customers c
WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM orders);
