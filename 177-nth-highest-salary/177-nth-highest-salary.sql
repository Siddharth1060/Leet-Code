CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      select ifnull(
                    (
                          select distinct salary
                          from (
                                select salary, dense_rank() over(order by salary desc )rnk
                                from employee
                                )r
                          where r.rnk=n

                    )
                    ,null)

  );
END