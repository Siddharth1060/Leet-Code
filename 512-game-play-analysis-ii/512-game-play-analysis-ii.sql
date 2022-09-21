# Write your MySQL query statement below
select player_id, device_id
from (
        select * ,dense_rank() over(partition by player_id order by event_date) as rnk
        from activity

        )t
        
where rnk=1