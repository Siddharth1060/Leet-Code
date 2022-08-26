# Write your MySQL query statement below
select student_id, course_id, grade
from (select student_id, grade, course_id, rank() over(partition by student_id order by grade desc, course_id asc ) as rnk
      from enrollments
       ) t
       
where t.rnk=1
group by student_id