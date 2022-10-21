# Write your MySQL query statement below
select name as country
from 
(select c.name, id , caller_id, callee_id, duration, avg(duration) ag, (select avg(duration) from calls) as glbl
from country c join person p on c.country_code= substring(p.phone_number,1,3)
                join calls cl on cl.caller_id=p.id or cl.callee_id= p.id
group by c.name)t
where ag> glbl