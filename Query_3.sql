/* Query to Get the total quantity of each product sold */

SELECT products.product_id, products.product_name, SUM(order_details.quantity) AS TotalQuantity
FROM products
INNER JOIN order_details ON products.product_id = order_details.product_id
GROUP BY products.product_id;
