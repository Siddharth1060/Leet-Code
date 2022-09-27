# Write your MySQL query statement below
select ifnull(round(sum(cnt)/ sum(ucnt),2),0) as average_sessions_per_user

from (
        select count(distinct session_id) cnt, count(distinct user_id) ucnt
        from activity
        where activity_date between '2019-06-28' and '2019-07-27'
        
        )t