# Write your MySQL query statement below
select c.customer_id, c.name
from orders o join product p on o.product_id= p.product_id
              join customers c on c.customer_id= o.customer_id 
group by  c.customer_id
having SUM(IF(month(o.order_date) =6, quantity, 0) * price) >= 100
    AND SUM(IF(month(o.order_date) =7, quantity, 0) * price) >= 100
