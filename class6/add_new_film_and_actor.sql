/*
Add the new Batman movie and list Zoe Kravitz as an actor
*/

use sakila;

-- add new film
insert into film (title, language_id, release_year)
values ('Batman', 1, 2022);
SELECT LAST_INSERT_ID() into @film_id;

-- add new actor
insert into actor (first_name, last_name)
values ('Zoë', 'Kravitz');
select last_insert_id() into @actor_id;

insert into film_actor (actor_id, film_id)
values (@actor_id, @film_id);

-- test
select film.title, actor.first_name, actor.last_name from film
inner join film_actor on film.film_id = film_actor.film_id
inner join actor on film_actor.actor_id = actor.actor_id
where title = 'Batman';


