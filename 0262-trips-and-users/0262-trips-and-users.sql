# Write your MySQL query statement below






select request_at as Day, 
       round(sum(case when t.status<>'completed' then 1 else 0 end)/ count(id),2) as 'Cancellation Rate'
from Trips t left join users u on t.client_id=u.users_id 
             left join users ud on t.driver_id=ud.users_id
where u.banned = 'No' and ud.banned='No' and t.request_at between "2013-10-01" and "2013-10-03"
group by request_at


