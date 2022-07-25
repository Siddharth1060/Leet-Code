# Write your MySQL query statement below
select round(sum(i1.tiv_2016),2) as tiv_2016
from insurance i1
where exists ( select pid from insurance  where i1.tiv_2015=tiv_2015 and i1.pid<>pid) 
      and  not exists ( select pid from insurance  where i1.pid<>pid and i1.lat=lat and i1.lon=lon) 

