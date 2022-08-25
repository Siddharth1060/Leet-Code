# Write your MySQL query statement below
select id,
      (case 
       when p_id is null then 'Root'
       when id in (select p_id from tree) then 'Inner'
       when id not in (select p_id from tree where p_id is not null) then 'Leaf'
       end) as type
from tree