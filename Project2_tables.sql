DROP TABLE IF EXISTS deaths_US
CREATE TABLE neonatal_deaths_US(
year INT PRIMARY KEY,
neonatal_deaths INT
);

DROP TABLE IF EXISTS births_US
CREATE TABLE births_US(
year INT PRIMARY KEY,
annual_births INT
);

SELECT births_us.year, annual_births, neonatal_deaths
FROM births_us
JOIN neonatal_deaths_us
ON births_us.year = neonatal_deaths_us.year;