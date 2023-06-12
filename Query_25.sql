/* Query to Find the employees who have processed more than 100 orders */

SELECT e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS employee_name, COUNT(o.order_id) AS total_orders
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
GROUP BY e.employee_id
HAVING COUNT(o.order_id) > 100
order by total_orders desc;
