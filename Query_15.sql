/* Query to Find the total revenue for the year 2016 */

SELECT SUM(od.quantity * od.unit_price) AS total_revenue
FROM order_details od
join orders o on o.order_id=od.order_id
WHERE YEAR(order_date) = 2016;
