/* Query to List the top 5 employees who have processed the most orders */

SELECT e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS employee_name, COUNT(o.order_id) AS total_orders
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
GROUP BY e.employee_id, employee_name
ORDER BY total_orders DESC
LIMIT 5;
