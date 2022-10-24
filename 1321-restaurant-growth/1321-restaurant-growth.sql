# Write your MySQL query statement below
select visited_on, amount, average_amount
from 
            (select visited_on, sum(amt) over(order by visited_on Rows between 6 preceding and current row) as amount,
                    round(avg(amt) over(order by visited_on Rows between 6 preceding and current row),2) as average_amount,
                     row_number() over(order by visited_on) as rno
            from (select * , sum(amount) amt
                  from customer
                  group by visited_on)t
            ) p
where p.rno > 6