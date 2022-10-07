# Write your MySQL query statement below
select project_id, employee_id
from
(select p.employee_id, e.name, e.experience_years,project_id, dense_rank() over(partition by project_id order by experience_years desc) rnk
from project p join employee e on p.employee_id=e.employee_id
)t
where rnk=1
