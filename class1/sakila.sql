use sakila;

SELECT * FROM actor;

/*
database: sakila, a film rental database
table: actor
*: all columns
row: all columns for a particular record
*/

SELECT first_name, last_name FROM actor
WHERE last_name = 'WAHLBERG'; -- predicate

SELECT first_name, last_name FROM actor
WHERE last_name = 'WAHLBERG' AND first_name = 'NICK'; -- predicate

select * from film;



