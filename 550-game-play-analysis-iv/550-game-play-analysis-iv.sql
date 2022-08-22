# Write your MySQL query statement below
with cte as(
    select *, 
    ifnull(lead(event_date,1) over(partition by player_id order by event_date asc),0) as nxt,
    rank() over(partition by player_id order by event_date asc) as rnk
    from activity
    
  
),
cte2 as(
    select count(distinct player_id) as ttl_cnt
    from activity
)

select round(count(player_id)/ ttl_cnt,2) as fraction
from cte,cte2
where datediff(nxt,event_date)=1 and rnk=1
