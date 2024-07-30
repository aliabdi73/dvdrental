select f1.title ,f2.title, f2.length
from film  as f1
inner join film as f2 on
f1.film_id != f2.film_id
and f1.length=f2.length
where f1.length> 100
order by f1.length asc
limit 10