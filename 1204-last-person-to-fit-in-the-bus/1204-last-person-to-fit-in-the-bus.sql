# Write your MySQL query statement below
select person_name
from 
(select *, sum(weight) over(order by turn) rolling_weight
from queue
)t
where rolling_weight<=1000
order by turn desc
limit 1