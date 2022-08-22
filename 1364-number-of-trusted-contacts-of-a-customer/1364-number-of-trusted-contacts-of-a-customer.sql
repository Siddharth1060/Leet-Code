# Write your MySQL query statement below
select i.invoice_id,
       c.customer_name,
       i.price,
       count( ct.user_id) as contacts_cnt,
       sum(case when ct.contact_email in (select distinct email from customers) then 1 else 0 end) as trusted_contacts_cnt

from invoices i left join customers c on i.user_id = c.customer_id
                left join contacts ct on ct.user_id= c.customer_id 
group by 1
order by invoice_id
