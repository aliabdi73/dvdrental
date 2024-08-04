select first_name, last_name from customer as c
where exists
(select * from payment as p
where p.customer_id=c.customer_id
and amount> 10)