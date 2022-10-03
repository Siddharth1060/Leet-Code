# Write your MySQL query statement below
select distinct num as ConsecutiveNums
from
    (select num, lead(num,1) over(order by id) as ld, lag(num,1) over(order by id) as lg
    from logs)t
where num=ld and num=lg