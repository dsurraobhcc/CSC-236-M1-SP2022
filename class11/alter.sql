/*
ALTER is a data-definition language (DDL) statement that allows you
to modify existing database objects without having to re-create them
entirely.

The script below illustrates an example use case.

Work through the script step-by-step, and examine intermediate results.
*/

/*
1. Create a test database, and a customer table
*/
drop schema if exists online_orders_alter;
create schema online_orders_alter;
use online_orders_alter;

create table customer (
	customer_id mediumint,
    last_name varchar(25),
    first_name varchar(25),
    middle_initial char(1)
);

/*
2. Add an email column to the table
*/
alter table customer add column email varchar(100) not null;

/*
3. The table is missing a primary key, but there is a candidate column.
Make it the primary key, and specify that is auto increments.
*/
alter table customer modify column customer_id mediumint auto_increment,
	add primary key (customer_id);
    
/*
4. Insert some data
*/
insert into customer (last_name, first_name, middle_initial, email)
values ('Mohan', 'Ram', 'A', 'rm@test.com'),
	('Jones', 'Sue', null, 'sj@test.com'),
    ('Ko', 'Marie', 'H', 'mko@test.com'),
    ('White', 'Barry', 'M', 'bw@testing.com'),
    ('Monster', 'Cookie', null, 'cm@sesamestreet.com');

select * from customer;

/*
5. Improve the design of the table by adding NOT NULL constraints
for last_name and first_name.
*/
alter table customer modify column last_name varchar(25) not null;
alter table customer modify column first_name varchar(25) not null;

/*
6. Try to make middle_initial NOT NULL
*/
alter table customer modify column middle_initial char(1) not null;

/*
For step 6 above, you will get an error message:
Error Code: 1138. Invalid use of NULL value
*/

/*
7. Update rows in the table to fill in missing middle_initial values.
Choose your own sample data for initials.

Then re-run step 6 above.
*/

/*
8. Replace the middle_initial column with middle_name
*/

-- 8.1 Add a column for middle name
alter table customer add column middle_name varchar(25);

-- 8.2 Copy the middle initial value to middle name
update customer set middle_name = middle_initial;

-- 8.3 drop middle initial
alter table customer drop column middle_initial;
-- This syntax works as well: alter table customer drop middle_initial;

/*
9. Change of order of middle initial in a resultset
*/
alter table customer modify column middle_name varchar(25) after first_name;

/*
You have now modified the customer table to support full middle names
rather than just middle initials, while preserving existing data.
*/
select * from customer;






