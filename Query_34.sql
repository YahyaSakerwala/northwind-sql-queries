/* Query to Find the customers who have ordered products from all categories */

SELECT customers.customer_id, Customers.contact_name , COUNT(DISTINCT products.category_id) AS  'number_of_Categoriest'
FROM Customers
JOIN Orders ON Customers.customer_id = Orders.customer_id
join order_details on orders.order_id = order_details.order_id
JOIN Products ON Order_details.product_id = Products.product_id
GROUP BY Customers.customer_id
HAVING COUNT(DISTINCT Products.category_id) = (SELECT COUNT(DISTINCT category_id) FROM Products);
