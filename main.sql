SELECT * FROM movies;
/*SELECT is used every time you want to query data from a database and * means all columns.*/
--selecting individual columns by name
SELECT column1, column2 
FROM table_name;
SELECT name, genre 
FROM movies;
SELECT name, genre, year FROM  movies;
--AS keyword
SELECT name AS 'Titles'
FROM movies;
--^^AS is a keyword in SQL that allows you to rename a column or table using an alias. The new name can be anything you want as long as you put it inside of single quotes. Here we renamed the name column as Titles.
SELECT name AS 'chars' FROM movies;
SELECT imdb_rating AS 'IMDb' FROM movies;
--DISTINCT keyword
SELECT tools 
FROM inventory;
SELECT DISTINCT tools 
FROM inventory;
--^^By adding DISTINCT before the column name, THE RESULTS show a simplified version of the output (no dupilicates)
SELECT DISTINCT genre 
FROM movies;
SELECT DISTINCT year 
FROM movies;
--WEHRE keyword
SELECT *
FROM movies
WHERE imdb_rating > 8;
/*We can restrict our query results using the WHERE clause in order to obtain only the information we want.**/
SELECT * 
FROM movies 
WHERE imdb_rating < 5;
SELECT * 
FROM movies 
WHERE year > 2014;
--LIKE I keyword
SELECT * 
FROM movies
WHERE name LIKE 'Se_en';
/*LIKE is a special operator used with the WHERE clause to search for a specific pattern in a column.

name LIKE 'Se_en' is a condition evaluating the name column for a specific pattern.

Se_en represents a pattern with a wildcard character.*/
SELECT * 
FROM movies
WHERE name LIKE 'Se_en';
--LIKE alternate wildcard keyword
SELECT * 
FROM movies
WHERE name LIKE 'A%';
/*A% matches all movies with names that begin with letter ‘A’
%a matches all movies that end with ‘a’*/
SELECT * 
FROM movies
WHERE name LIKE '%man%';
SELECT * 
FROM movies
WHERE name LIKE 'The %';
/**query so that it selects all the information about the movie titles that begin with the word ‘The’.**/
--IS NULL keyword
SELECT name
FROM movies 
WHERE imdb_rating IS NOT NULL;

SELECT name FROM movies WHERE IMDb IS NULL
--Between operator
SELECT *
FROM movies
WHERE year BETWEEN 1990 AND 1999;
/*When the values are text, BETWEEN filters the result set for within the alphabetical range.

In this statement, BETWEEN filters the result set to only include movies with names that begin with the letter ‘A’ up to, but not including ones that begin with ‘J’.*/
SELECT *
FROM movies
WHERE name BETWEEN 'A' AND 'J';
SELECT *
FROM movies
WHERE name BETWEEN 'D' AND 'G';
SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979;
--AND keyword
SELECT *
FROM movies
WHERE year < 1985
   AND genre = 'horror';