# Write your MySQL query statement below
select e1.employee_id
from employees e1 join employees e2 on e1.manager_id=e2.employee_id join employees e3 on e3.employee_id=e2.manager_id
where e1.employee_id<>1 and (e1.manager_id=1 or e2.manager_id=1 or e3.manager_id=1)
