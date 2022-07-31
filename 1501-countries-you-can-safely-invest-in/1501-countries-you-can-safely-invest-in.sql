# Write your MySQL query statement below

select c.name as country
from country c 
join person p on c.country_code = left(p.phone_number,3)
join calls cl on cl.caller_id = p.id or cl.callee_id=p.id
group by c.country_code
having avg(duration) > (select avg(duration) from calls)




