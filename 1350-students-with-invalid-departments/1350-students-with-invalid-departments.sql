# Write your MySQL query statement below
select s.id, s.name
from students s
where s.department_id Not In (Select id from Departments)