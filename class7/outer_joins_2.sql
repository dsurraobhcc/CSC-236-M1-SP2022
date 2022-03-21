use world;

select * from countrylanguage;

-- are there any countries that do not have language recorded in the database?
select c.Name, cl.Language from country c
left outer join countrylanguage cl on c.Code = cl.CountryCode
where cl.Language is null;

-- EXISTS: return countries that have rows in the country language table
select Name from country
where exists (
	select * from countrylanguage where CountryCode = country.Code
);

-- NOT EXISTS: return countries that DO NOT have rows in countrylanguage
-- equivalent to the LEFT OUTER JOIN
select Name from country
where not exists (
	select * from countrylanguage where CountryCode = country.Code
);


