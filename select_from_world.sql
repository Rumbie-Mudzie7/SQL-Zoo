-- Extracting name, continent, population data from world table.
SELECT name, continent, population FROM world;

-- Querying countries that have a population of at least 200 million.
SELECT name FROM world
WHERE population >= 200000000;

-- per capita GDP for those countries with a population of at least 200 million.
SELECT
  name, gdp/population 
FROM
  world
WHERE
  population >= 200000000;

-- Show the name and population in millions for the countries of the continent 'South America'
SELECT name, population/1000000
FROM world
WHERE continent = 'South America';

-- Show the name and population for France, Germany, Italy
SELECT name, population
FROM world
WHERE name IN ('France','Germany', 'Italy')

-- Show the countries which have a name that includes the word 'United'
SELECT name
FROM world
WHERE name LIKE '%United%';

-- Show the countries that are big by area or big by population
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000;

-- Show name, population and area. Exclusive OR (XOR).
SELECT name, population, area
FROM world
WHERE area > 3000000 XOR population > 250000000;

-- For South America show population in millions and GDP in billions both to 2 decimal places.
SELECT name, ROUND(population/1000000.0,2), ROUND(GDP/1000000000.0,2)
FROM world
WHERE continent = 'South America';

-- Show per-capita GDP for the trillion dollar countries to the nearest $1000.
SELECT name, ROUND(gdp/population, -3) AS per_capita_GDP
FROM world
WHERE gdp >= 1000000000000;

-- Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.
SELECT name, capital 
FROM world
WHERE LENGTH(name) = LENGTH(capital);

-- Show the name and the capital where the first letters of each match.
SELECT name, capital
FROM world
WHERE LEFT(name,1) LIKE LEFT(capital,1) AND name <> capital;

-- Find the country that has all the vowels and no spaces in its name.
SELECT name
   FROM world
WHERE name LIKE '%o%a%i%ue%';
