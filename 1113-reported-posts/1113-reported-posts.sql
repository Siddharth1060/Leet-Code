# Write your MySQL query statement below
select extra report_reason, count( distinct post_id) report_count
from actions
where action= 'report' and action_date = '2019-07-04'
group by extra
