# Write your MySQL query statement below

select name as follower, follower_count as num
from
(select followee as name ,count(follower) as follower_count
from follow
group by followee
)t 
where t.name in
(select  distinct followee
from follow
where  followee in (select follower from follow))
order by 1