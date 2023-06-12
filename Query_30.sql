/* Query to Find the employee who processed the most orders in August 2016 */

SELECT e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS employee_name, COUNT(o.order_id) AS order_count
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
where order_date between '2016-08-01' And '2016-08-31'
GROUP BY e.employee_id
ORDER BY order_count DESC
LIMIT 1;
