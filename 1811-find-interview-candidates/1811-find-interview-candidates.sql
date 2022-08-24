# Write your MySQL query statement below
select  u.name, u.mail 
from users u join contests c on u.user_id= c. gold_medal 
group by u.user_id
having count(contest_id)>=3

union

select  u.name, u.mail
from users u, contests c1, contests c2, contests c3
where u.user_id in (c1.gold_medal, c1.silver_medal, c1.bronze_medal)
    and u.user_id in (c2.gold_medal, c2.silver_medal, c2.bronze_medal)
    and u.user_id in (c3.gold_medal, c3.silver_medal, c3.bronze_medal)
    and c1.contest_id=c2.contest_id-1 and c2.contest_id= c3.contest_id-1
    
