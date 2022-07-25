# Write your MySQL query statement below
with CTE as (
    select tiv_2015, tiv_2016, lat, lon, 
    count(pid) over (partition by tiv_2015) as count_tid,
    count(pid) over (partition by lat,lon) as count_loc 
    from insurance
)
select round(sum(tiv_2016),2) as tiv_2016 from CTE where count_tid>1 and count_loc=1