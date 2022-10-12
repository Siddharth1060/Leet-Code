# Write your MySQL query statement below
select substring(t.trans_date, 1,7) month,
       country,
       sum( case when state= 'approved' then 1 else 0 end) as approved_count,
       sum( case when state= 'approved' then amount else 0 end) approved_amount,
       sum( case when state= 'chargeback' then 1 else 0 end) as chargeback_count,
       sum( case when state= 'chargeback' then amount else 0 end) as chargeback_amount       
from 
(
    select c.trans_date, 'chargeback' as state, amount, country
    from chargebacks c join transactions t on c.trans_id= t.id
    union 
    select trans_date, state, amount, country
    from transactions 
    where state= 'approved'
)t
group by month(t.trans_date), country