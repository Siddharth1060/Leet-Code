# Write your MySQL query statement below
select seller_name
from seller
where seller_id not in (select seller_id
                        from orders
                        where year(sale_date)= '2020'
                        group by seller_id, sale_date
                       )
order by 1