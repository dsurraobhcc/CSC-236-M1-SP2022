use world;

-- only countries that have cities are returned
select co.Name, ci.Name from country co 
inner join city ci on co.Code = ci.CountryCode
where ci.Name is null;

-- all countries are returned whether or not there are matching cities
-- i.e., all rows from the LEFT table are returned, regardless of matches
-- agains the RIGHT table.
select co.Name, ci.Name 
from country co left outer join city ci 
	on co.Code = ci.CountryCode
where ci.Name is null;

-- all rows from the RIGHT table are returned, regardless of matches
select co.Name, ci.Name 
from  city ci right outer join country co 
	on co.Code = ci.CountryCode
where ci.Name is null;

-- outer join: fetches rows with missing data in joins

