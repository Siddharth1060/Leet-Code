# Write your MySQL query statement below
select student_id, min(course_id) course_id, grade
from enrollments
where (student_id, grade) in (select student_id, max(grade)
                                    from enrollments
                                    group by student_id                                    
                                    )
group by student_id
order by 1