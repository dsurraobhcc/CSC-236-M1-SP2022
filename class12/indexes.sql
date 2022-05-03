/*
Index: to locate things quickly
i.e., querying data faster
*/

drop schema if exists index_tests;
create schema index_tests;
use index_tests;

-- defined table with an index
create table large_table_1 (
	id int primary key,
    code varchar(20),
    index `idx_code` (`code`)
);

-- create a stored procedure to populate the above table
delimiter //

create procedure populate_large_table()
begin
	set @count = 0;
    
    while @count <= 1000000 do
		set @count = @count + 1;
        insert into large_table_1 (id, code)
		values (@count, concat('code', @count));
    end while;
end;
//

delimiter ;

-- populated a million rows
call populate_large_table();

-- query using index
select * from large_table_1
where code = 'code9999';
-- ran in 0.0014 sec

-- remove index
alter table large_table_1 drop index `idx_code`;

-- query without index
select * from large_table_1
where code = 'code9999';
-- ran in 0.31 sec
-- full table scan: scan all rows until a match is found

-- note the performance difference
-- 0.0014 sec vs 0.31 sec

select * from large_table_1
where id = 9999;
-- 0.00030 sec

-- add index back
alter table large_table_1 
	add index `idx_code` (`code`);


