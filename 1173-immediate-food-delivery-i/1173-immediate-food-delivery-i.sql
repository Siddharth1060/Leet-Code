# Write your MySQL query statement below
select round(sum(case when datediff(customer_pref_delivery_date, order_date)=0 then 1 else 0 end)*100/ count(*),2) as immediate_percentage
from delivery
