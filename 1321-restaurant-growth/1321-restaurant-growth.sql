# Write your MySQL query statement below
select distinct visited_on,
       sum(amount) over(order by visited_on range between interval 6 day preceding and current row) as amount,
       round(sum(amount)OVER(order by visited_on RANGE between interval 6 day preceding and current row)/7,2) as average_amount

from customer
limit 30 offset 6