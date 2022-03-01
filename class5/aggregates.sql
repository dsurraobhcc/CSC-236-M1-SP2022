use sakila;

select rating, count(*) from film
group by rating;

-- get film counts grouped by rental_rate
select rental_rate, count(*) from film 
group by rental_rate
order by rental_rate;

select rental_rate, count(*) as film_count from film 
group by rental_rate
order by film_count;

/*
for continuous numeric data, is there a way to bin based on intervals? 
Like, have bins from 0 - 4.99, 5.00 - 9.99, etc.?

title, 			rental_rate, 	rental_rate_bin
'some title', 	0.99			bin 1
'other title', 	6.99			bin 2
...
*/

-- get the minimum length of a film grouped by rating
select rating, min(length) from film 
group by rating;

-- spot check
select rating, length from film 
where rating = 'R'
order by length;

select rating, min(length) from film 
where rating = 'R';

-- get the sum of movie lengths group by rating
select rating, sum(length) from film
group by rating;

select sum(rental_rate) from film
where rating = 'R';

select rating, sum(rental_rate) from film
group by rating;

select title, rental_duration from film
where rental_duration >= 6;

-- get the longest film
select max(length) from film;

select title, length from film 
order by length desc;

select title, length from film 
where length = 185; -- hardcoded

-- subquery: get film titles with maximum length
select title, length from film 
where length = (select max(length) from film); 

-- minimum length
select title, length from film 
where length = (select min(length) from film); 

select title, length from film 
where length = (select avg(length) from film); 

select title, length from film 
where length between (select avg(length) from film) - 5
	and (select avg(length) from film) + 5;
    


