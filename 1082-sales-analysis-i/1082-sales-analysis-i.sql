# Write your MySQL query statement below
select seller_id
from ( select seller_id, dense_rank() over(  order by sum(price) desc) rnk
        from sales
        group by seller_id
        )t
where rnk=1