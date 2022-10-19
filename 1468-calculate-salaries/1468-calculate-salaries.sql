# Write your MySQL query statement below
select company_id,employee_id, employee_name, 
        round(case
         when mx<1000 then salary
         when mx<10001 then .76*salary
         when mx> 10000 then .51*salary
         end
        ,0) as salary
from salaries s join
                (select company_id id, max(salary) mx
                 from salaries 
                 group by company_id)t  on s.company_id= t.id 

