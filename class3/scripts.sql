use sakila;

select * from film
where rating = 'G'
or rating = 'PG'
or rating = 'PG-13';

-- check
select distinct(rating) from film
where rating = 'G'
or rating = 'PG'
or rating = 'PG-13';

-- get 99 cent movies with the ratings 'G', 'PG', 'PG-13'
-- use of parentheses!
select title, rating, rental_rate from film
where (rating = 'G' or rating = 'PG' or rating = 'PG-13')
and rental_rate = .99;

/*
Using the 'description' field of the 'film' table, and pattern matching, 
get the title and description of all films that are boring and involve 
database administrators.
*/

select * from film
where description like '%boring%'
and (description like '%database administrator%'
  or description like '%db administrator%');


