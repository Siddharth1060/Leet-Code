# Write your MySQL query statement below
select question_id as survey_log
from
(select question_id, sum(case when action = 'answer' then 1 else 0 end)/ sum(case when action='show' then 1 else 0 end) as ratio
from surveylog
group by question_id
order by ratio desc, question_id 
limit 1)t