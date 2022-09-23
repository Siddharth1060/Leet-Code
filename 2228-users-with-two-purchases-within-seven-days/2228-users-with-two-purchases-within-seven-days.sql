# Write your MySQL query statement below
select distinct p1.user_id
from purchases p1 join purchases p2 on p1.user_id= p2.user_id and datediff(p1.purchase_date, p2.purchase_date)<=7 and datediff(p1.purchase_date, p2.purchase_date)>=0
where p1.purchase_id<> p2.purchase_id
order by 1