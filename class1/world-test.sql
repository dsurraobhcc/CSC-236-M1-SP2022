use world;

select * from city;

-- sort by population
select * from city
order by Population; -- clause

-- sort in descending order by population
select * from city
order by Population desc;

-- most populous city
select * from city
order by Population desc
limit 10;

select * from city
where CountryCode = 'ARG'
order by Population desc
limit 1;

-- get cities with a population greater than or equal to one million
select * from city
where Population >= 1000000;

-- get most populous city for each country
-- sorting by multiple columns
select * from city
order by CountryCode, Population desc;

select * from country
where Continent = 'North America';

select distinct Continent from country;


