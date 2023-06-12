/* Query to Find the average quantity of products ordered in each order */

SELECT p.product_id, p.product_name , od.order_id, AVG(od.quantity) AS average_quantity
FROM Order_details od
JOIN products p ON od.product_id = p.product_id
GROUP BY od.order_id
order by average_quantity desc;
