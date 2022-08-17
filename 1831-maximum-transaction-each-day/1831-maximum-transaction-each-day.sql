# Write your MySQL query statement below

with cte as(
select transaction_id,amount,day, rank() over(partition by day(day) order by amount desc) as rnk
from transactions
)

select transaction_id
from cte
where rnk=1
order by transaction_id