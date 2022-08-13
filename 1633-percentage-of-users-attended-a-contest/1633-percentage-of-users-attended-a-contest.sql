# Write your MySQL query statement below
select contest_id,round(count(register.user_id)*100/(select count(user_id) from users),2) as percentage
from Register
group by contest_id
order by 2 desc,1
