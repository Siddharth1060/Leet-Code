# Write your MySQL query statement below
(
    select account_id, day,
    sum(case     
         when type= 'deposit' then  amount
         else -amount
         end) over(partition by account_id order by day ) as balance
    from transactions 
)

