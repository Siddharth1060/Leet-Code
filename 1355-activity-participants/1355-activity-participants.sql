# Write your MySQL query statement below


select activity 
from friends

group by activity
having count(activity) <>
                        (    select  max(cnt)
                             from (
                                    select f.activity, count(f.activity) as cnt
                                    from friends f join activities a on f.activity= a.name
                                    group by a.name
                                  )t
                        )
       and
       count(activity) <>
                        (    select  min(cnt)
                             from (
                                    select f.activity, count(f.activity) as cnt
                                    from friends f join activities a on f.activity= a.name
                                    group by a.name
                                  )t
                        )