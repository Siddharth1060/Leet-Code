# Write your MySQL query statement below
 select name
 from
(select  c.name as name, count(c.name) as cnt
from vote v join candidate c on c.id=v.candidateid
group by candidateid
order by cnt desc
limit 1)t