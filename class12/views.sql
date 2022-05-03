use sakila;

create view v_pg_films as
select film_id, title, description from film
where rating = 'PG';

select * from v_pg_films
where description like '%drama%';



