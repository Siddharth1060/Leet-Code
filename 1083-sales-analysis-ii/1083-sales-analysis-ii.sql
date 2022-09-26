# Write your MySQL query statement below
select distinct s.buyer_id
from sales s join product p on p.product_id=s.product_id
where product_name= 'S8'
and buyer_id not in (select buyer_id
                          from sales s join product p on p.product_id=s.product_id
                          where product_name = "iPhone"
                          
                        )