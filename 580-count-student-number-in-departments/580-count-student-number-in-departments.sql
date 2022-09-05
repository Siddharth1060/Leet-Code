# Write your MySQL query statement below
select dept_name, count(student_id)  as student_number
from student s right join department d on s.dept_id=d.dept_id
group by d.dept_name
order by student_number desc, 1