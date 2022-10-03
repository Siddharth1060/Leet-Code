# Write your MySQL query statement below
select distinct title
from content c join tvprogram t on t.content_id = c.content_id
where month(program_date) = 06 and  year(program_date) = 2020 and kids_content='Y' and content_type='movies'