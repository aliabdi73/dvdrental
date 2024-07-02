select first_name, AVG(length) from
(select * from film
inner join (select * from film_actor
inner join actor
on film_actor.actor_id=actor.actor_id) as actor2
on film.film_id = actor2.film_id
where rental_rate > 0.99 and rating ='G') as f1
group by first_name
having avg(length)<100