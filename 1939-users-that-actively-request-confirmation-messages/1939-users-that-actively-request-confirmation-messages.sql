# Write your MySQL query statement below
select 
distinct c1.user_id
from confirmations c1,
     confirmations c2
where c1.user_id = c2.user_id and c1.time_stamp > c2.time_stamp
and timestampdiff(second, c2.time_stamp,c1.time_stamp)<= 86400


