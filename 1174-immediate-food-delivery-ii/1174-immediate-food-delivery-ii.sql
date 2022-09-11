# Write your MySQL query statement below
select round(
        100*sum(case when order_date = customer_pref_delivery_date then 1 else 0 end)
        / 
         count(*),2) as immediate_percentage
from (
        select *, dense_rank() over(partition by customer_id order by order_date asc) rnk
        from delivery
     )t
where rnk = 1

