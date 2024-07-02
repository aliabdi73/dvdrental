select (first_name || ' ' ||last_name) as full_name, sum (amount) from
(select * from customer
inner join payment
on customer.customer_id= payment.customer_id) as f2
group by full_name
order by sum desc
limit 10