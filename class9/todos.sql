use todo_db;

insert into todos (
	description,
    deadline,
    created_by
)
values ('file taxes', '2022-04-15', 'dominicsurrao'),
	('grade assignments', '2022-04-10', 'dominicsurrao');

update todos 
	set completed_flag = 'F',
		modified_by = 'fred'
where id = 2;
    
select * from todos;



