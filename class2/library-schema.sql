drop schema if exists library;
create schema library;
use library;

create table book (
	id int auto_increment,
    title varchar(200)
);

