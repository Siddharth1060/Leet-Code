# Write your MySQL query statement below
select d.dept_name, count(student_id) as student_number
from department d left join student s on d.dept_id = s.dept_id
group by d.dept_id
order by 2 desc, 1