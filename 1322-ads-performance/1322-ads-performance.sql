# Write your MySQL query statement below
select ad_id, round(ifnull(count(case when action='Clicked' then 1 end)*100/( Count(case when action='Clicked' then 1 end)+ count(case when action='Viewed' then 1 end)),0),2) as ctr
from ads 
group by ad_id
order by 2 desc,1
