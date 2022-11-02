# Write your MySQL query statement below
select id, company, salary
from 
    (select *, 
     row_number() over(partition by company order by salary,id) rno,
     count(*) over(partition by company) ttl
     from employee
    )temp
where rno >= ttl/2 and rno <= ttl/2+1
#case
#       # when ttl % 2=0 then rno= round(ttl/2,0) or rno= round(ttl/2,0) + 1
#       # else rno= round(ttl/2,0)
#      when mod(ttl,2) = 0 then (rno = ttl/2 or rno = ttl/2 + 1)
#      else (rno = floor(ttl/2) + 1 )
#       end