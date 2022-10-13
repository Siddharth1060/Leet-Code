# Write your MySQL query statement below
select min(log_id) as start_id, max(log_id) as end_id
from
    (select log_id, 
            row_number() over( order by log_id) as rno
    from logs)t
group by log_id - rno



