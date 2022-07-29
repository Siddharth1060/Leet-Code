# Write your MySQL query statement below

select round (count( if(order_date = customer_pref_delivery_date, delivery_id,null ))/count(delivery_id) *100,2) as immediate_percentage
from Delivery
