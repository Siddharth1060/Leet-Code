# Write your MySQL query statement below
select p.product_id, p.product_name
from sales s join product p on s.product_id = p.product_id
group by s.product_id
having s.product_id not in (select product_id
                            from sales
                            where
                            sale_date < '2019-01-01' or sale_date > '2019-03-31')
