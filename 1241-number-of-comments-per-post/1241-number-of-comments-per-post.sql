# Write your MySQL query statement below
select s1.sub_id as post_id,
     (select count( distinct s2.sub_id) 
             from Submissions s2 
             where s1.sub_id= s2.parent_id
             ) as number_of_comments
from Submissions s1
where parent_id is Null
group by sub_id
order by 1


