DROP TABLE IF EXISTS neonatal_deaths
CREATE TABLE neonatal_deaths(
country TEXT,
year INT ,
neonatal_deaths INT
);

DROP TABLE IF EXISTS births
CREATE TABLE births(
country TEXT,
year INT,
annual_births INT
);

SELECT births.year, births.country, annual_births, neonatal_deaths
FROM births
JOIN neonatal_deaths
ON births.year = neonatal_deaths.year
AND births.country = neonatal_deaths.country;
