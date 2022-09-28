# Write your MySQL query statement below

select distinct sub_id post_id,
        (select  count( distinct sub_id) 
         from submissions s1 
         where s1.parent_id = s.sub_id  ) as number_of_comments
from submissions s
where s.parent_id is null 
order by 1

