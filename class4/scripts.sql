use world;

select city.Name from city, country
where city.CountryCode = country.Code
and Continent = 'Asia';
