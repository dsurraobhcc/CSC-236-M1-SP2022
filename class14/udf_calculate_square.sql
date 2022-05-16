drop schema if exists stored_object_tests;
create schema stored_object_tests;
use stored_object_tests;

drop function if exists udf_calculate_square;

-- temporarily change delimiter from ; to //
delimiter //

create function udf_calculate_square(num int)
returns int
	deterministic
begin
	-- some series to sql statements
    return num * num;
end//

-- reset delimiter to ;
delimiter ;

-- begin main
set @input_num = 5;

select udf_calculate_square(@input_num);

