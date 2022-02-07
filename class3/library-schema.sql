drop schema if exists library;
create schema library;
use library;

create table book (
	`id` int primary key auto_increment, -- primary key constraint
    `title` varchar(200) not null,
    `summary` varchar(5000),
    `author` varchar(200) not null,
    `subject` varchar(50) not null,
    `year_published` year not null -- not null constraint
);

