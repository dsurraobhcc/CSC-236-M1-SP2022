use world;

select * from city;

-- example using AND 
-- get all cities in the Netherlands with population greater than 500,000
select * from city
where  CountryCode != 'NLD'
AND Population > 500000;

-- example using AND 
-- get all cities NOT in the Netherlands with population greater than 500,000
select * from city
where  CountryCode != 'NLD'
AND Population > 500000;

select * from city
where NOT(CountryCode = 'NLD')
AND Population > 500000;

-- get cities in Belgium or Brazil


