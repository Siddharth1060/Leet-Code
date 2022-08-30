# Write your MySQL query statement below
with cte as(
    select *, lag(arrival_time,1,0) over(order by arrival_time) prv
    from buses
)

select cte.bus_id, count(p.passenger_id) passengers_cnt
from cte left join passengers p on cte.arrival_time >= p.arrival_time and p.arrival_time > cte.prv
group by 1
order by 1


