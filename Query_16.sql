/* Query to List all products that are discontinued */

SELECT p.product_id,p.product_name,p.discontinued
FROM products p
WHERE discontinued = 1;
