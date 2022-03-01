use sakila;

select * from film limit 2;
select * from actor limit 2;
select * from film_actor limit 2;

select * from film_actor where actor_id = 1;
select * from actor where actor_id = 1;

-- get films featuring Penelope Guiness, actor id 1
select f.film_id, f.title, fa.film_id, fa.actor_id, 
	a.actor_id, a.first_name, a.last_name from film f
inner join film_actor fa on f.film_id = fa.film_id
inner join actor a on fa.actor_id = a.actor_id
where a.actor_id = 1;

-- simplifying
select f.title, a.first_name, a.last_name from film f
inner join film_actor fa on f.film_id = fa.film_id
inner join actor a on fa.actor_id = a.actor_id
where a.actor_id = 1;



