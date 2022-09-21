# Write your MySQL query statement below
select customer_number
from (
      select customer_number, count(order_number) cnt
        from orders
    group by customer_number

        )t
    order by cnt desc
    limit 1
