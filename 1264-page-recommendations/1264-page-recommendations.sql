# Write your MySQL query statement below

select distinct page_id as recommended_page
from likes l join
                (select user2_id as frnd_id
                from friendship
                where user1_id=1 

                union

                select user1_id as frnd_id
                from friendship
                where user2_id=1) f on l.user_id = f.frnd_id
where l.page_id not in (select page_id
                        from likes
                        where user_id =1
                       )