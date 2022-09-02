# Write your MySQL query statement below
select e.business_id
from events e join 
(
select event_type, sum(occurences)/count(event_type) as avg_act
from events
group by event_type
)t  
on e.event_type=t.event_type 
where e.occurences> t.avg_act
group by e.business_id
having count(e.business_Id)>1
order by business_id
