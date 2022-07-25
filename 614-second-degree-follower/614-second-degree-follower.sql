# Write your MySQL query statement below
with follows as(
select
    followee,
    follower,
    count(followee) over(partition by followee ) as follower_count
    
from Follow
where followee in (select follower from follow)
)

select distinct followee as follower, follower_count as num
from follows




