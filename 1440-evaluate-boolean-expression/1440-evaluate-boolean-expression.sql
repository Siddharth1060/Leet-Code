# Write your MySQL query statement below
select lft as left_operand,
       operator, 
       rt as right_operand,
       case when value=1 then 'true' else 'false' end as value
from
(select v1.name as lft,
       e.operator as operator, 
       v2.name as rt,
      (case when operator= ">" then v1.value > v2.value
            when operator = "=" then v1.value = v2.value
            when operator = "<" then v1.value < v2.value
            end) as value
        
from expressions e join variables v1 on e.left_operand = v1.name
                    join variables v2 on e.right_operand = v2.name
                    )t
