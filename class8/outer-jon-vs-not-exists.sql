/*
Modify the following statement to use outer joins to get all 
film categories that do not have films:
*/

use sakila;
select c.name, fc.film_id from category c 
left outer join film_category fc on c.category_id = fc.category_id
where fc.film_id is null;

/* modify this query to use NOT EXISTS */
/* return all categories that do not have films */
select * from category 
where not EXISTS (
	select * from film_category 
    where category_id = category.category_id
);

/* are there any films that are not in inventory ? */
select distinct f.title from film f
left outer join inventory i on f.film_id = i.film_id
where i.inventory_id is null;

/* use NOT EXISTS instead */
/* do this as an exercise... */

 