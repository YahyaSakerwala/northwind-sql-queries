/* Query to Find all employees who report to ‘Andrew Fuller’ */

SELECT * FROM employees
where reports_to =
(Select employee_id
 from employees 
 where first_name = 'Andrew' and last_name = 'Fuller');
