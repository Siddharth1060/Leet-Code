# Write your MySQL query statement below
select player_id, player_name, (sum(player_id= wimbledon)+sum(player_id= US_open)+sum(player_id= Fr_open)+sum(player_id= Au_open)) as grand_slams_count 
from players p join championships c on p.player_id in (c.wimbledon,c.fr_open, c.au_open,c.us_open)
group by 1
