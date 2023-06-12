/* Query to Find the employees who have not processed any orders */

SELECT e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS 'Employee_Name'
FROM employees e
LEFT JOIN orders o ON e.employee_id = o.employee_id
WHERE o.order_id IS NULL
group by e.employee_id;
