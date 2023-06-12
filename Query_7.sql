/* Query to Get the top 5 most sold products */

SELECT p.product_id, p.product_name, SUM(od.quantity) AS Total_quantity_sold
FROM products p
INNER JOIN order_details od ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;
