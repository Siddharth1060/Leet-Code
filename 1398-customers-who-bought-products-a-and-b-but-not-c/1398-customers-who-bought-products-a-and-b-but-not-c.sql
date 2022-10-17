# Write your MySQL query statement below
select c.customer_id,c.customer_name
from orders o join customers c on o.customer_id=c.customer_id
group by o.customer_id
having o.customer_id in ( 
                        select customer_id 
                        from orders
                        where product_name= 'A' 
                        )
     and o.customer_id in ( 
                        select customer_id 
                        from orders
                        where product_name= 'B' 
                        )
    and o.customer_id not in ( 
                        select customer_id 
                        from orders
                        where product_name= 'C' 
                        )