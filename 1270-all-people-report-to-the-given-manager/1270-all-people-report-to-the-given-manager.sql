# Write your MySQL query statement below

select employee_id
from employees 
where employee_id<> 1 and manager_id in (select e1.employee_id
                                         from employees e1 join employees e2 on e1.manager_id=e2.employee_id
                                         where e1.manager_id=1 or e2.manager_id=1
                                         )
