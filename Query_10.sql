/* Query to List all ‘Orders’ with ‘Customer’ details and ‘Employee’ who processed it */

SELECT o.order_id, o.order_date, c.customer_id, c.contact_name as customer_name , e.employee_id, CONCAT(e.first_name,' ' , e.last_name) AS employee_name
FROM orders as o
inner JOIN customers as c ON o.customer_id = c.customer_id
inner JOIN employees as e ON o.employee_id = e.employee_id;
