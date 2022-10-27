# Write your MySQL query statement below

select user_id,
        max(datediff(ld, visit_date)) biggest_window
from
(select *, 
        lead(visit_date,1,'2021-1-1') over(partition by user_id order by visit_date) as ld
 from uservisits) t
group by user_id
