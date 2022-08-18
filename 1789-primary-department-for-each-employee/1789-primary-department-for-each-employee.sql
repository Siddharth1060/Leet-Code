# Write your MySQL query statement below
select employee_id, 
       department_id
from employee
where  primary_flag='Y'
union

select employee_id,
       department_id
from employee
group by 1
having count(department_id)=1
