# Write your MySQL query statement below
Select i.invoice_id, c.customer_name, i.price, count(contact_name) as contacts_cnt, 
       sum(case when contact_email in (select email from customers) then 1 else 0 end) as trusted_contacts_cnt
from invoices i left join customers c on i.user_id = c.customer_id
                left join contacts ct on ct.user_id= c.customer_id
group by i.invoice_id
order by 1