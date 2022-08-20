# Write your MySQL query statement below
select min_date as login_date, count(user_id) as user_count
from
            (select user_id, min(activity_date) as min_date
             from traffic
             where activity='login'
             group by user_id
            )t
where datediff('2019-06-30', min_date) <=90
group by min_date