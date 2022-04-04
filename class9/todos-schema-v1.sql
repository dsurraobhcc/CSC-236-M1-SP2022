/*
primary key
description
deadline (by when should the task be completed)
completed flag (yes/no)
date created
who created the task 
date updated
who updated the task
*/

drop schema if exists todo_db;
create schema todo_db;
use todo_db;

create table todos (
	id int primary key auto_increment,
    description varchar(255) not null,
    deadline datetime,
    completed_flag enum('T','F') default 'F',
    created_date timestamp DEFAULT CURRENT_TIMESTAMP,
    created_by varchar(100),
    modified_date timestamp ON UPDATE CURRENT_TIMESTAMP,
    modified_by varchar(100)
);


    