# Write your MySQL query statement below
with cte as
(
    select log_id, row_number() over(order by log_id) as rno, dense_rank() over(order by log_id) as rnk
    from logs
)

select min(log_id )as start_id, max(log_id) as end_id
from cte
group by log_id- rno

