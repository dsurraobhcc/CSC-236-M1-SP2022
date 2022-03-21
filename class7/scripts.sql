drop schema if exists datatypetests;
create schema datatypetests;
use datatypetests;

/*
1. Use proper data types
e.g. for prices, do NOT use varchar, use DECIMAL
salary DECIMAL(5,2) == up to 999.99

salary DECIMAL(5,2) unsigned

2. Specify units for columns
*/


create table salary_test(
	id int,
    salary_usd decimal(5, 2) 
);

create table salary_test(
	id int,
    salary decimal(5, 2),
    salary_currency enum('USD', 'INR', 'EURO')
);

insert into salary_test values (1, 234.50);

insert into salary_test values (1, 1234.50);
/* Error Code: 1264. Out of range value for column 'salary' at row 1 */





