-- This is the first query:

SELECT DISTINCT year from population_years;

-- Add your additional queries below:

/*1.-What is the largest population size for Gabon in this dataset?*/
SELECT * FROM population_years 
WHERE country = "Gabon"
ORDER BY population DESC LIMIT 1;

/*2.-What were the 10 lowest population countries in 2005?*/
SELECT * FROM population_years 
WHERE population_years.year = 2005
ORDER BY population ASC LIMIT 10;

/*3.-What are all the distinct countries with a population of over 100 million in the year 2010?*/
SELECT * FROM population_years 
WHERE population_years.year = 2010 AND population > 1000.00000
ORDER BY population DESC;

/*4.-How many countries in this dataset have the word “Islands” in their name?*/
SELECT * FROM population_years 
WHERE country LIKE '%Islands%';

/*5.-What is the difference in population between 2000 and 2010 in Indonesia?*/
SELECT (population - (SELECT population 
FROM population_years 
WHERE country = "Indonesia" AND YEAR = 2000)) AS "Difference in population between 2000 and 2010 in Indonesia"
FROM population_years 
WHERE country = "Indonesia" AND YEAR = 2010;