# Write your MySQL query statement below
 select  count(st.account_id) as accounts_count
            from streams st join subscriptions sb on st.account_id=sb.account_id 
            where year(st.stream_date) <>2021 and ((sb.start_date)<= '2021-12-31' and (sb.end_date)>= '2021-01-01' )