# Write your MySQL query statement below
select d.name as Department, e.name as Employee, e.salary as Salary
from Employee e
left join Department d On e.departmentId= d.id
where 
( e.departmentId, e.salary) IN (select e.departmentId, Max(e.salary) from Employee e
group by e.departmentId);