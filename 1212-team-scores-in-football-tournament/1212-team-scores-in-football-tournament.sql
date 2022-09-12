# Write your MySQL query statement below
select team_id,
       team_name, 
       sum(case when team_id= host_team and host_goals> guest_goals then 3
                when team_id= guest_team and host_goals< guest_goals then 3
                when  host_goals=guest_goals then 1
                else 0
           end) as num_points

from
(
    select *
    from matches m right join teams t on t.team_id=m.host_team 
    union all
    select *
    from matches m right join teams t on t.team_id=m.guest_team
)t
group by team_name
order by 3 desc, 1


