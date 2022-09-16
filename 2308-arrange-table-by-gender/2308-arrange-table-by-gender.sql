# Write your MySQL query statement below
with cte as(
     select *, dense_rank() over(partition by gender order by user_id) rnk,
            ( case
                    when gender='female' then 1
                    when gender='other' then 2
                    when gender= 'male' then 3
                end
                ) as gender_rnk
     from genders
    )
select user_id, gender
from cte
order by rnk, gender_rnk