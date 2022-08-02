# Write your MySQL query statement below
with cte as(
    select  round(sqrt((p1.x - p2.x) * (p1.x - p2.x) + (p1.y - p2.y)*(p1.y - p2.y)),2) as fun 
    from Point2d p1, point2d p2
    where (p1.x,p1.y) <> (p2.x,p2.y)
)
select min(fun) as shortest
from cte


