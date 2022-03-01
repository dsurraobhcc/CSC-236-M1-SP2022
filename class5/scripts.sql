/*
Using the 'sakila' databases 'film' and 'film_category' tables, 
and using an implicit join statement, write a SQL statement that 
returns all film titles in category ID 11.
*/

use sakila;

-- 3 ways of doing joins

select f.title, fc.category_id from film f, film_category fc
where f.film_id = fc.film_id
and fc.category_id = 11;

select f.title, fc.category_id from film f
inner join film_category fc on f.film_id = fc.film_id
where fc.category_id = 11;

select title, category_id from film
inner join film_category using (film_id)
where category_id = 11;


select title, special_features from film
where special_features like '%deleted%'
or special_features like '%behind the scenes%';


