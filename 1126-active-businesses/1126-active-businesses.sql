# Write your MySQL query statement below

                




select business_id
from events e1 join  
                    (select business_id id,event_type event, avg(occurences) as cnt
                     from events 
                     group by event) e2 
                on e1.event_type= e2.event
where e1.occurences> e2.cnt
group by business_id
having count(occurences)>1