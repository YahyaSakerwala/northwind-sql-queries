/* Query to List all the distinct countries to which orders have been shipped */

select distinct ship_country
from orders 
group by ship_country;
