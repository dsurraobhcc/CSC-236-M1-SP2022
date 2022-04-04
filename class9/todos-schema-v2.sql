drop schema if exists todo_db;
create schema todo_db;
use todo_db;

create table todo (
	id int primary key auto_increment,
    description varchar(255) not null,
    deadline datetime,
    completed_flag enum('T','F') default 'F'
);

create table todo_history (
	id int primary key auto_increment,
    todo_id int,
    updated_value enum('T','F'),
    updated_date timestamp DEFAULT CURRENT_TIMESTAMP,
    updated_by varchar(100),
    CONSTRAINT FOREIGN KEY (`todo_id`) REFERENCES `todo` (`id`) ON DELETE CASCADE
);

