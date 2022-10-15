# Write your MySQL query statement below

select activity
from friends
group by activity
having count(id) <> (    select count(id) cnt
                             from friends
                             group by activity
                             order by cnt desc
                             limit 1
                            )
and count(id) <> (    select count(id) cnt
                             from friends
                             group by activity
                             order by cnt 
                             limit 1
                            )                                                
                                    
                                 