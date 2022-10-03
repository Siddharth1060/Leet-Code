# Write your MySQL query statement below
 select d.name as Department, e.name as Employee, e.salary as Salary
 from (
        select departmentid as id, max(salary) as max_sal
        from employee
        group by departmentid        
          
        )t
join employee e on t.id=e.departmentid
join department d on e.departmentid = d.id
where e.salary= t.max_sal