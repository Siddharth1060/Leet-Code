# Write your MySQL query statement below
select c.candidate_id
from candidates c join rounds r on c.interview_id= r.interview_id
where years_of_exp >1
group by r.interview_id
having sum(r.score)>15