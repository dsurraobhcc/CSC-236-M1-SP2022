drop schema if exists library;
create schema library;
use library;

create table book (
	id int primary key auto_increment, -- primary key constraint
    title varchar(200) not null,
    summary varchar(3000),
    year_published year not null -- not null constraint
);

-- Error Code: 1075. Incorrect table definition; 
-- there can be only one auto column and it must be defined as a key
