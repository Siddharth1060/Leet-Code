# Write your MySQL query statement below
select min(dis) as shortest
from (  select  abs(x- lead(x,1) over(order by x asc)) dis
        from point
        )t