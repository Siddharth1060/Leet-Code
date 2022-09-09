# Write your MySQL query statement below
select ifnull(round((cnt)/id,2),0) as average_sessions_per_user
from
    (
        select *,count( distinct user_id) as id, count(distinct session_id ) as cnt
        from activity 
        where activity_date between '2019-06-28' and '2019-07-27'
        
        
    )t