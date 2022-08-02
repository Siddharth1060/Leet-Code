# Write your MySQL query statement below
select  (ifnull(round(count(distinct a1.session_id)/ count(distinct a1.user_id),2),0)) as average_sessions_per_user
from activity a1, activity a2
where a1.session_id<>a2.session_id and a1.activity_date between  '2019-06-28' and '2019-07-27' 

