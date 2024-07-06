select * from
(select * from film
inner join language
on film.language_id=language.language_id)as f1
where description ilike '%cat%' and rating= 'R'