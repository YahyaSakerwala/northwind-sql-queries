/* Query to List the employees and the number of orders each employee has taken */

SELECT employees.employee_id, CONCAT(employees.first_name, ' ', employees.last_name) AS employee_name, COUNT(orders.order_id) AS Total_Orders_placed
FROM employees
LEFT JOIN orders ON employees.employee_id = orders.employee_id
GROUP BY employees.employee_id ;
