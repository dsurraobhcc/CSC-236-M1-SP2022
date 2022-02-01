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

-- get cities in Belgium or Brazil or Argentina
-- OR operator
select * from city
where CountryCode = 'BEL'
OR CountryCode = 'BRA'
OR CountryCode = 'ARG';

select * from city
where CountryCode = 'BEL'
|| CountryCode = 'BRA'
|| CountryCode = 'ARG';

select * from city
where CountryCode IN ('BEL', 'BRA', 'ARG');

-- aggregate functions

-- get the highest population of a city in Pakistan
select max(Population) from city
where CountryCode = 'PAK';

-- get the average population of a city in Pakistan
select avg(Population) from city
where CountryCode = 'PAK';

-- least population
select min(Population) from city
where CountryCode = 'PAK';

-- total population 
select sum(Population) from city
where CountryCode = 'USA';

-- get countries beginning with letter 'B'
select Name from country
where Name like 'b%';

-- get countries beginning with 'island'
select * from country
where Name like '%island%';

-- get all Pacific islands
select * from country
where Name like '%island%'
and Continent = 'Oceania';
