# Write your MySQL query statement below
select distinct e1.employee_id, 
       e1.name, 
       e1.salary,
       dense_rank() over( order by salary) as team_id
from employees e1 join employees e2 on e1.salary=e2.salary and e1.employee_id<>e2.employee_id
order by team_id,1

