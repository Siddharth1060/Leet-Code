# Write your MySQL query statement below
select player_id, player_name, 
       sum( case when player_id = wimbledon then 1 else 0 end +
            case when player_id = fr_open then 1 else 0 end +
            case when player_id = us_open then 1 else 0 end +
            case when player_id = au_open then 1 else 0 end) as grand_slams_count
from players p join championships c on p.player_id in (c.wimbledon,c.fr_open, c.au_open,c.us_open)
group by 1
