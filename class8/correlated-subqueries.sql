use world;

-- countries with the maximum population for their continent
select c_outer.Continent, c_outer.Name, c_outer.Population from country c_outer
where c_outer.Population = (
	select max(c_inner.Population) from country c_inner
    where c_inner.Continent = c_outer.Continent -- CORRELATION
	group by c_inner.Continent
);

select c_outer.Continent, c_outer.Name, c_outer.Population from country c_outer
order by c_outer.Continent;

select max(c_inner.Population), c_inner.Continent from country c_inner
group by c_inner.Continent;

-- other questions...
select * from country;

-- countries with the greatest life expectancy 
-- countries with the greatest life expectancy in their continent

-- smallest countries in their continent
-- countries with greatest GNP for their continent...


