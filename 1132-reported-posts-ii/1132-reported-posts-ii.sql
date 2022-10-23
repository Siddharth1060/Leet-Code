# Write your MySQL query statement below
select round(avg(ratio),2) as average_daily_percent
from
(select a.post_id,a.action,a.extra, (count( distinct r.post_id)*100/ count(distinct a.post_id)) as ratio
from actions a left join removals r on a.post_id=r.post_id
where action='report' and extra='spam'
group by action_date)t