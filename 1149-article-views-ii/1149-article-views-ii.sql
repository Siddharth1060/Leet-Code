# Write your MySQL query statement below
select distinct v1.viewer_id as id
from views v1 join views v2 on v1.viewer_id=v2.viewer_id and v1.article_id<>v2.article_id
where v1.view_date=v2.view_date
group by v1.view_date, v1.viewer_id
having count( v1.viewer_id)>1 
order by 1