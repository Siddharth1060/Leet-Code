# Write your MySQL query statement below

with cali as(
 select count(student_id)as es
    from California
    where score>=90),
ny as(
    select count(student_id)as es
    from NewYork
    where score>=90)


select
    (case
      when cali.es > ny.es then 'California University'
      when ny.es > cali.es then 'New York University'
      else 'No Winner' end) as winner
from cali, ny


