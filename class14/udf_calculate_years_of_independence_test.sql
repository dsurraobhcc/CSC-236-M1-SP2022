use world;

select udf_calculate_years_of_independence('USA');

select Name,
	udf_calculate_years_of_independence(Code) as 'years_since_independence'
from country;

-- this is equivalent
select Name,
	year(now()) - IndepYear as 'years_since_independence'
from country;




