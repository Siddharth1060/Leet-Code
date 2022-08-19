# Write your MySQL query statement below
with cte as(
    select r1.user_id as user1_id, r2.user_id as user2_id, count(r1.follower_id) as cnt
    from relations r1 join relations r2 on r1.user_id<>r2.user_id and r1.follower_id=r2.follower_id
    group by r1.user_id, r2.user_id
    having r1.user_id < r2.user_id
)
    select user1_id, user2_id 
    from cte
    where cnt in (select max(cnt) from cte)
