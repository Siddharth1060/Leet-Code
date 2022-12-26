# Write your MySQL query statement below
select e2. name as Employee
from employee e1 join employee e2 on e2.managerid = e1.id
where e1.salary< e2.salary 
                