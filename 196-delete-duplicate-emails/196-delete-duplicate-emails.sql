# Write your MySQL query statement below


Delete 
from person
where id not in ( select id
                  from (Select min(id) as id
                        from person
                        group by email
                        )t
                )