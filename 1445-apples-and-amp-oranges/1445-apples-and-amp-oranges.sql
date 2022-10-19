# Write your MySQL query statement below
select s1.sale_date, s2.sold_num - s1.sold_num as diff
from sales s1 join sales s2 on s1.sale_date = s2.sale_date and s1.fruit<>s2.fruit
group by sale_date

