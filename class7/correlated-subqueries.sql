use world;

-- countries with above average population
select * from country
where Population > (select avg(Population) from country);

-- country with the maximum population
select * from country
where Population = (select max(Population) from country);

select Name, Continent, Population from country;

-- countries with maximum population in their continent
-- method 1: simple sorting, use order by
select Name, Continent, Population from country
order by Continent, Population desc;

-- method 2: use subquery
select Continent, max(Population) from country
group by Continent;

-- get me all countries that have a maximum population for their
-- corresponding continent
-- CORRELATED SUBQUERY
select c1.Continent, c1.Name, c1.Population from country c1
where c1.Population = (
	select max(c2.Population) from country c2
    where c2.Continent = c1.Continent -- CORRELATION
    and c2.Population != 0 -- filtering out invalid/missing data
	group by c2.Continent
);





