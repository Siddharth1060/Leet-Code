# Write your MySQL query statement below
select round(count(t.player_id)/ (select count( distinct player_id) from activity),2) as fraction
from (select *, lead(event_date,1) over(partition by player_id order by event_date) ld,
                row_number() over(partition by player_id order by event_date) rnk   from activity)t 
where datediff(ld, event_date) =1 and rnk=1