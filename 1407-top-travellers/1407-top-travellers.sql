# Write your MySQL query statement below
select u.name, ifnull(sum(r.distance),0) as travelled_distance
from rides r right join users u on u.id = r.user_id
group by r.user_id
order by 2 desc, 1