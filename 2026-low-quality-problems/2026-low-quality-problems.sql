# Write your MySQL query statement below
select problem_id
from Problems
where problem_id in (select problem_id 
                     from Problems 
                     group by problem_id
                     having (sum(likes)/(sum(likes)+sum(dislikes)) * 100) < 60 )
order by 1 asc
        
