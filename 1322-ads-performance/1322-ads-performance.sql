# Write your MySQL query statement below

select ad_id, ifnull(round(sum(case when action='clicked' then 1 else 0 end)*100/ 
          (sum(case when action = 'clicked' then 1 else 0 end)+ sum(case when action='viewed' then 1 else 0 end)),2),0) as ctr

from ads
group by ad_id
order by 2 desc, 1 