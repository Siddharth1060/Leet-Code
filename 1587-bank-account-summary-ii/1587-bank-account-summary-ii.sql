# Write your MySQL query statement below
select u.name, (Sum(t.amount)) as balance
from Transactions t left join Users u on u.account= t.account
group by t.account
having Sum(t.amount) >10000