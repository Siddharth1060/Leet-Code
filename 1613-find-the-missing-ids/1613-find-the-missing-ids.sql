# Write your MySQL query statement below
with recursive 
cte as(
    select 1 as num
    union all
    select num+1  from cte where num < (select max(customer_id) from Customers)
)
select num as ids
from cte 
where num not in (select customer_id from Customers )