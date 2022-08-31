# Write your MySQL query statement below
select m.member_id, m.name,
       (case when (v.visit_id) is null then 'Bronze'
            when 100*count(p.visit_id)/ count(v.visit_id) < 50 then 'Silver'
            when 100*count(p.visit_id)/ count(v.visit_id) < 80 then 'Gold'
            else 'Diamond'
            end) as category 
from members m left join visits v on m.member_id = v.member_id 
               left join purchases p on v.visit_id = p.visit_id
group by m.member_id
order by m.member_id