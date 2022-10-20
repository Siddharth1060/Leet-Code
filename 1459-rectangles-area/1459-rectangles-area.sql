# Write your MySQL query statement below
select *
from
(select p1.id as P1, p2.id as P2, abs(p1.x_value-p2.x_value)* abs(p1.y_value-p2.y_value) as AREA
from points p1 cross join points p2 
where p1.id < p2.id )t 
where area<> 0
order by 3 desc, 1,2