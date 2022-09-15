# Write your MySQL query statement below
select round(sum(tiv_2016),2) as tiv_2016
from insurance i1
where (i1.lat,i1.lon) not in (select lat, lon
                              from insurance
                              where pid<> i1.pid
                             )
                             
                        and i1.tiv_2015 in (select tiv_2015
                                          from insurance
                                          where pid<> i1.pid
                                         )
