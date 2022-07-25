CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
set N= N-1;
  RETURN (
      
      # Write your MySQL query statement below.
      
 select 
 ifnull(
        ( select  distinct salary as "getNthHighestSalary(2)"
          from employee
          order by salary desc
          Limit N,1),Null)
      );
END

