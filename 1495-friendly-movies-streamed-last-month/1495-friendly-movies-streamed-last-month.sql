# Write your MySQL query statement below
select distinct c.title
from tvprogram t  join content c on t.content_id=c.content_id
where c.kids_content='Y' and month(t.program_date)= 06 and c.content_type='Movies' and year(t.program_date)= 2020