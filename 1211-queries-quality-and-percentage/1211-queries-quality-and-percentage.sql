# Write your MySQL query statement below
select 
query_name, 
ifnull(round(sum(rating/ position)/count(query_name),2),0) as quality, 
ifnull(round(sum(case when rating< 3 then 1 end)*100/count(query_name),2),0) as poor_query_percentage
from queries
group by query_name