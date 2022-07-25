# Write your MySQL query statement below



with rnk as
    (select user_id, time_stamp,
            rank() over(partition by user_id order by time_stamp desc) as stamp_rnk
     from Logins
     where Year(time_stamp)=2020
     
    )
select user_id, rnk.time_stamp as last_stamp
from rnk
where rnk.stamp_rnk =1