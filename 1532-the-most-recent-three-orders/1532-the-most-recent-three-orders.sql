# Write your MySQL query statement below
select customer_name, customer_id, order_id, order_date
from
(select c.name customer_name, c.customer_id,o.order_id, o.order_date, row_number() over(partition by o.customer_id order by order_date desc) rno
from orders o join customers c on o.customer_id = c.customer_id)t
where rno < 4
order by 1, 2, 4 desc