# Write your MySQL query statement below
select q.id, q.year, ifnull(n.npv,0) as npv
from queries q  left join npv n on n.id=q.id and q.year=n.year
order by n.id, year