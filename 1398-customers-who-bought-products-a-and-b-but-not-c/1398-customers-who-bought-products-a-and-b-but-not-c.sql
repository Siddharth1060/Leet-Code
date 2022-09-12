# Write your MySQL query statement below

with cte as(
        select o.customer_id, c.customer_name, o.product_name
        from orders o join customers c on c.customer_id= o.customer_id
        group by o.customer_id, product_name
)

 select distinct customer_id ,customer_name
 from cte
 where customer_id not in (select customer_id
                           from cte
                           where product_name ='C'  
                          ) 
       and
       customer_id  in (select customer_id
                           from cte
                           where product_name ='A'  
                          ) 
       and
       customer_id  in (select customer_id
                           from cte
                           where product_name ='B'  
                          ) 
                          
                          