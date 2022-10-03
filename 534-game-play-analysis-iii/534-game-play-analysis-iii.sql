# Write your MySQL query statement below
select player_id, event_date, sum as games_played_so_far
from (select *, sum(games_played) over (partition by player_id order by event_date) as sum from activity)t
