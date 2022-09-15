# Write your MySQL query statement below
select s.product_id, sum(quantity) as total_quantity
from sales s 
group by product_id
