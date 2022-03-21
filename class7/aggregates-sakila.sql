use sakila;

-- Fetch the actor names that has starred in the most films

-- step 1: count of films by actor
select actor_id, count(film_id) as film_count from film_actor
group by actor_id
order by film_count desc
limit 1;

-- step 2: join actor table to above result, using a subquery
select * from actor
inner join (
	select actor_id, count(film_id) as film_count from film_actor
	group by actor_id
	order by film_count desc
	limit 1
) as max_film_count on actor.actor_id = max_film_count.actor_id;

