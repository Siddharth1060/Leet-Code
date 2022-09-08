# Write your MySQL query statement below


SELECT IFNULL(NUll,
              (select max(salary) 
               from (select salary, dense_rank() over(order by salary desc) rnk
                     from employee
                     )r
               where r.rnk=2
               )
             ) AS SecondHighestSalary