# Write your MySQL query statement below
with cte as(
    select user_id, visit_date,
            rank() over(partition by user_id order by visit_date)as rnk
    from uservisits
)

select c1.user_id, max(datediff(ifnull(c2.visit_date,'2021-1-1'), c1.visit_date)) as biggest_window
from cte c1 left join cte c2 on c1.user_id = c2.user_id and c1.rnk=c2.rnk-1
group by c1.user_id


