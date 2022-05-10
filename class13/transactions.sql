drop schema if exists transactions_tests;
create schema transactions_tests;
use transactions_tests;

create table store (
	id smallint auto_increment primary key,
    store_name varchar(25)
);

-- By default, this transaction is committed
-- i.e. autocommit is enabled
insert into store (store_name) values ('Star Market'); -- committed to db

select * from store;

-- Similar to the previous statement, this transaction is committed
-- but explicitly
start transaction;
insert into store (store_name) values ('Whole Foods');
commit;

select * from store;

-- Another way to explicitly define transactions
-- Also see sakila database data script for examples
set autocommit=0;
insert into store (store_name) values ('Roche Brothers');
insert into store (store_name) values ('Market Basket');
commit;

select * from store;

-- This transaction is rolled back, i.e. undone
start transaction;
insert into store (store_name) values ('Stop&Shop');
select * from store;
rollback;

select * from store;

-- rollback a delete statement
start transaction;
delete from store where store_name = 'Roche Brothers';
select * from store;
rollback;

select * from store;

