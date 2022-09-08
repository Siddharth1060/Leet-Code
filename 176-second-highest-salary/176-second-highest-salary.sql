# Write your MySQL query statement below
select  max(salary) as SecondHighestSalary
        from (select salary, dense_rank() over(order by salary desc) rnk
              from employee
                )r
where r.rnk=2
 