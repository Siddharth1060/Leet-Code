# Write your MySQL query statement below
select  t.product_id, 
        t.year as first_year,
        t.quantity,
        t.price
from
         (  select product_id,year,quantity,price,
            rank() over( partition by product_id order by year ) rnk
            from sales
         ) as t
where t.rnk= 1
         
