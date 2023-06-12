/* Query to Find the most expensive product in each category */

select p.product_name,c.category_name ,max(p.unit_price) as Product_Price
from products p 
inner join categories c On p.category_id= c.category_id
group by c.category_id;
