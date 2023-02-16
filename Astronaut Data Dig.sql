SELECT *
FROM astronauts

/** Some statistics about average age at time of first mission */
SELECT *, (Year-YEAR(Birth_Date)) AS Age 
FROM astronauts AS Astro_Year

/** Query to get max, min, and average age from above **/

SELECT MAX(Age) AS Max_Age, MIN(Age) AS Min_Age, AVG(Age) AS Average_Age
FROM Astro_year

--Now let's look at the Alma Mater, Undergrad, and Graduate Majors. Let's look at all Alma_Mater Locations

SELECT Alma_Mater, Undergraduate_Major, Graduate_Major
FROM astronauts;

--Let's group the astronauts by Alma Mater, having only undergrad engineering majors
SELECT Name, Alma_Mater, Birth_Date, Undergraduate_Major, Graduate_Major
FROM astronauts
WHERE Undergraduate_Major LIKE '%Engineering' AND Graduate_Major LIKE '%Engineering'

--Let's filter out data using AND/OR Clauses. Let's look at all astronauts born before 1980 who are deceased :(
SELECT Name, Birth_Date 
FROM astronauts
WHERE Status = 'Deceased' AND YEAR(Birth_Date) < 1980;


	


