# Write your MySQL query statement below
select substring(order_date,1,7) as month,
       count(  order_date) as order_count,
       count( distinct customer_id) as customer_count
from orders
where invoice>20
group by 1

