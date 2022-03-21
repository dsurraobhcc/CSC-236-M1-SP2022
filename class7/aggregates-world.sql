use world;

select Name, SurfaceArea from country;

-- get all countries with greater than average SurfaceArea
SELECT Name, SurfaceArea
FROM country
WHERE SurfaceArea > (
    SELECT avg(SurfaceArea)
    FROM country
);

-- get all countries that have maximum surface area
SELECT Name, SurfaceArea
FROM country
WHERE SurfaceArea = (
    SELECT max(SurfaceArea)
    FROM country
);

SELECT Name, SurfaceArea FROM country
order by SurfaceArea desc limit 1;

SELECT SurfaceArea FROM country
order by SurfaceArea desc limit 1;

-- option 1
SELECT Name, SurfaceArea
FROM country
WHERE SurfaceArea = (
    SELECT SurfaceArea FROM country
	order by SurfaceArea desc limit 1
);

-- option 2
SELECT Name, SurfaceArea
FROM country
WHERE SurfaceArea = (
    SELECT max(SurfaceArea)
    FROM country
);
