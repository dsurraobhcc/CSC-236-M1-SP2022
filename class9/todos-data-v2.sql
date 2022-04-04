/*
creating a history table
*/
use todo_db;

-- step 1: creating todos
insert into todo (description, deadline) 
values ('file taxes', '2022-04-15');

set @todo_id = last_insert_id();

set @initial_value = 'F';

insert into todo_history (todo_id, updated_value, updated_by)
values (@todo_id, @initial_value, 'dominicsurrao');


-- user 'admin' updates the value to complete
set @updated_value = 'T';
set @updated_by = 'admin';

update todo set completed_flag = @updated_value
where id = @todo_id;

insert into todo_history (todo_id, updated_value, updated_by)
values (@todo_id, @updated_value, @updated_by);

-- todo updated again by user 'fred'
set @updated_value = 'F';
set @updated_by = 'fred';

update todo set completed_flag = @updated_value
where id = @todo_id;

insert into todo_history (todo_id, updated_value, updated_by)
values (@todo_id, @updated_value, @updated_by);

select todo.id, description, deadline, updated_value, updated_date, updated_by from todo
inner join todo_history on todo.id = todo_history.todo_id;

select * from todo;




