/* Query to List all orders shipped to ‘Germany’ */

SELECT o.order_id,o.order_date,o.ship_country,o.shipped_date
FROM orders o
WHERE ship_country = 'Germany';

/* To get all details of order use this query */
SELECT * FROM orders
where ship_country='Germany';
