# Write your MySQL query statement below
with cte as(
    select platform, Experiment_name
    from
        (select 'Android' as platform
        union
        select 'IOS' 
        union 
        select 'Web' )t
    cross join
        (select 'Reading' as experiment_name
        union
        select 'Sports' as experiment_name
        union
        select 'Programming' as experiment_name)r
)
select cte.platform, cte.experiment_name, count(experiment_id) as num_experiments
from cte left join experiments e on cte.platform= e.platform and cte.experiment_name=e.experiment_name
group by cte.platform, cte.experiment_name
order by 1
