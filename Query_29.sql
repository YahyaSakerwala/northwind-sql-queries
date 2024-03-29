/* Query to Find the month in the year 2016 with the highest total sales */

select Month(o.order_date) AS "Sales_Month",round(sum(o_d.unit_price * o_d.quantity - (o_d.unit_price * o_d.quantity * o_d.discount)),2) as "Sales"
from orders o inner join order_details od
On o.order_id = od.order_id       
WHERE YEAR(o.order_date) = 2016
GROUP BY MONTH(o.order_date)
ORDER BY Sales DESC
LIMIT 1;
