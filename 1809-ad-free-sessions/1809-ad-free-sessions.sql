# Write your MySQL query statement below
select session_id
from playback
where session_id not in (select p.session_id 
                        from ads a join playback p on p.customer_id = a.customer_id
                        where a.timestamp between start_time and end_time
                        )