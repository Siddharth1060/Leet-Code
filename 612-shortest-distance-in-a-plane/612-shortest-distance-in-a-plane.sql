# Write your MySQL query statement below
select round(sqrt((p2.x - p1.x)*(p2.x - p1.x)+(p2.y-p1.y)*(p2.y-p1.y)),2) as shortest
from point2d p1 cross join point2d p2 
where (p1.x,p1.y) <> (p2.x,p2.y)
order by 1
limit 1