# Write your MySQL query statement below
(
select name as results
from
(select r.user_id, u.name, count(r.movie_id) cnt
from movierating r join users u on u.user_id=r.user_id
group by r.user_id
)t
order by cnt desc, name
limit 1
)

union

select title as results
from
(select r.user_id, m.title, avg(rating) ag
from movierating r join movies m on m.movie_id = r.movie_id
where month(r.created_at) = 02
group by m.movie_id
order by ag desc, title
limit 1
)t
