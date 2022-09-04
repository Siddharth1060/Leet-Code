# Write your MySQL query statement below
select t1.team_name away_team, t2.team_name home_team 
from teams t1 cross join teams t2 on t1.team_name<>t2.team_name
