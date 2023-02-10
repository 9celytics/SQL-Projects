-- 1. Query all columns for all American cities in the CITY table with populations larger than 100000.
--    The CountryCode for America is USA.
SELECT *
FROM City
WHERE CountryCode = 'USA' 
AND Population > 100000;

-- 2. Query the NAME field for all American cities in the CITY table with populations larger than 120000. 
--    The CountryCode for America is USA.
SELECT Name
FROM City
WHERE CountryCode = 'USA'
AND Population > 120000;

-- 3. Query all columns (attributes) for every row in the CITY table.
SELECT *
FROM City;

-- 4. Query all columns for a city in CITY with the ID 1661.
SELECT * 
FROM City
WHERE ID = 1661;

-- 5. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT *
FROM City
WHERE CountryCode = 'JPN';

-- 6. Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT Name
FROM City
WHERE CountryCode = 'JPN';

-- 7. Query a list of CITY and STATE from the STATION table.
SELECT City, State
FROM Station;

-- 8. Query a list of CITY names from STATION for cities that have an even ID number. 
--    Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT City
FROM Station
WHERE MOD(ID,2) = 0
ORDER BY City ASC;

-- 9. Find the difference between the total number of CITY entries in the table and
--    the number of distinct CITY entries in the table.
SELECT COUNT(City) - COUNT(DISTINCT City)
FROM Station;

-- 10. Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths 
--     (i.e.: number of characters in the name). If there is more than one smallest or largest city,
--     choose the one that comes first when ordered alphabetically.
SELECT City, LENGTH(City) L
FROM Station
ORDER BY L DESC, city ASC fetch first row only;
SELECT City, LENGTH(City) L
FROM Station
ORDER BY L ASC, city ASC fetch first row only;

-- 11. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
--     Your result cannot contain duplicates.
SELECT DISTINCT (City)
FROM Station
WHERE City LIKE 'A%'
OR City LIKE 'E%'
OR City LIKE 'I%'
OR City LIKE 'O%'
OR City LIKE 'U%'
ORDER BY City ASC;

-- 12. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. 
--     Your result cannot contain duplicates.
SELECT DISTINCT(City)
FROM Station
WHERE City LIKE '%a'
OR City LIKE '%e'
OR City LIKE '%i'
OR City LIKE '%o'
OR City LIKE '%u'
ORDER BY City ASC;

-- 13. Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) 
--     as both their first and last characters. Your result cannot contain duplicates.
SELECT DISTINCT(City)
FROM Station
WHERE (City LIKE 'A%'
OR City LIKE 'E%'
OR City LIKE 'I%'
OR City LIKE 'O%'
OR City LIKE 'U%')
AND (City LIKE '%a'
OR City LIKE '%e'
OR City LIKE '%i'
OR City LIKE '%o'
OR City LIKE '%u')
ORDER BY City ASC;

-- 14. Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
SELECT DISTINCT(City)
FROM Station
WHERE UPPER(SUBSTR(City,1,1))
NOT IN ('A','E','I','O','U')
AND LOWER(SUBSTR(City,1,1))
NOT IN ('a','e','i','o','u')
ORDER BY City ASC;

-- 15. Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT(City)
FROM Station
WHERE UPPER(SUBSTR(City,LENGTH(City),1))
NOT IN ('A', 'E', 'I', 'O', 'U')
AND LOWER(SUBSTR(City,LENGTH(City),1))
NOT IN ('a', 'e', 'i', 'o', 'u')
ORDER BY City ASC;

-- 16. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
--     Your result cannot contain duplicates.
SELECT DISTINCT(City)
FROM Station
WHERE (UPPER(SUBSTR(City,1,1))
      NOT IN ('A','E','I','O','U')
      AND LOWER(SUBSTR(City,1,1))
      NOT IN ('a','e','i','o','u'))
OR (UPPER(SUBSTR(City,LENGTH(City),1))
   NOT IN ('A','E','I','O','U')
   AND LOWER(SUBSTR(City, LENGTH(City),1))
   NOT IN ('a','e','i','o','u'));
   
-- 17. Query the list of CITY names from STATION that do not start with vowels and do not end with vowels.
--     Your result cannot contain duplicates.
SELECT DISTINCT(City)
FROM Station
WHERE (UPPER(SUBSTR(City,1,1))
      NOT IN ('A','E','I','O','U')
      AND LOWER(SUBSTR(City,1,1))
      NOT IN ('a','e','i','o','u'))
AND (UPPER(SUBSTR(City,LENGTH(City),1))
   NOT IN ('A','E','I','O','U')
   AND LOWER(SUBSTR(City, LENGTH(City),1))
   NOT IN ('a','e','i','o','u'));

-- 18. Query the Name of any student in STUDENTS who scored higher than  Marks. 
--     Order your output by the last three characters of each name. 
--     If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.),
--     secondary sort them by ascending ID.
SELECT Name
FROM Students
WHERE MarkS > 75
ORDER BY SUBSTR(Name, LENGTH(Name)-2,3), ID;

-- 19. Write a query that prints a list of employee names 
--     (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT Name
FROM Employee
ORDER BY Name ASC;

-- 20. Write a query that prints a list of employee names  (i.e.: the name attribute) for employees 
--     in Employee having a salary greater than  per month who have been employees for less than  months. 
--     Sort your result by ascending employee_id.
SELECT Name
FROM Employee
WHERE Salary > 2000
AND Months < 10
ORDER BY Employee_id ASC;

-- 21. Query the total population of all cities in CITY where District is California.
SELECT SUM(Population)
FROM City
WHERE District = 'California';

-- 22. Query the average population of all cities in CITY where District is California.
SELECT AVG(Population)
FROM City
WHERE District = 'California';

-- 23. Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT AVG(FLOOR(Population))
FROM City;


























