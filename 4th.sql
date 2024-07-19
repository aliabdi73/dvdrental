select * from payment
inner join staff
on payment.staff_id=staff.staff_id
where amount>3
order by amount asc
limit 10