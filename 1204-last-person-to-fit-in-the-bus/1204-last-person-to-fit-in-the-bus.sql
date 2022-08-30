# Write your MySQL query statement below
select person_name from
    (select person_name, weight,sum(weight) over(order by turn) as tot_weight
     from queue)t
where tot_weight<=1000
order by tot_weight desc
limit 1     
     
 
 