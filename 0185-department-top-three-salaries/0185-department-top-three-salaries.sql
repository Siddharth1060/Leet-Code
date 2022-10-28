# Write your MySQL query statement below
select Department, Employee, Salary
from
(select e.name as Employee, Salary, e.departmentid, d.name as Department, dense_rank() over(partition by departmentid order by salary desc) rnk
from employee e join department d on e.departmentid= d.id
order by departmentid)t
where t.rnk<4