# Write your MySQL query statement below


 select distinct o.customer_id ,c.customer_name
 from orders o join customers c on c.customer_id= o.customer_id
        group by o.customer_id, product_name
 having o.customer_id not in (select customer_id
                           from Orders
                           where product_name ='C'  
                          ) 
       and
       o.customer_id  in (select customer_id
                           from orders
                           where product_name ='A'  
                          ) 
       and
       o.customer_id  in (select customer_id
                           from orders
                           where product_name ='B'  
                          ) 
                          
                          