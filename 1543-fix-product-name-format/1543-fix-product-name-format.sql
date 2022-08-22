# Write your MySQL query statement below
select  lower(trim(product_name)) as product_name, substring(sale_date,1,7) as sale_date, count(sale_id) as total
from sales
group by 1,2
order by 1,2