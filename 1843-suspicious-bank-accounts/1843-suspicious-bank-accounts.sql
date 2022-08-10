# Write your MySQL query statement below
with cte as(
select t.account_id, t.type,a.max_income, month(t.day) mnth, sum(t.amount) incm
from transactions t join accounts a
on a.account_id=t.account_id
where t.type='Creditor' 
group by t.account_id, month(t.day)
having sum(t.amount)> a.max_income
order by t.account_id
)

select distinct a.account_id
from cte a, cte b
where a.account_id=b.account_id and a.mnth-b.mnth=1 