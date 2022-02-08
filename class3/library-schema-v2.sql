drop schema if exists library;
create schema library;
use library;

create table `subject` (
	`id` int primary key,
    `title` varchar(50) not null unique -- unique constraint
);

create table book (
	`id` int primary key auto_increment, -- primary key constraint
    `title` varchar(200) not null,
    `summary` varchar(5000),
    `author` varchar(200) not null,
    `subject_id` int,
    `year_published` year not null -- not null constraint
);

