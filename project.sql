SELECT *
FROM asa.hrd;
-- we query the data for a certain age (33)
SELECT *
FROM asa.hrd
WHERE Age = 33
ORDER BY firstname DESC;

-- we query the table and increase their ages by 5
SELECT
 firstname, state, Sex, MaritalDesc, Age, Age + 5 AS Incage
 FROM asa.hrd;
 
 SELECT *
 FROM asa.hrd
 WHERE Age >= 40;
 -- we import new table
 SELECT *
 FROM asa.bp;
 
 SELECT * 
 FROM asa.dxx;
 -- 
 SELECT * 
 FROM asa.dxx
 WHERE unitprice OR unitcost >= 600;
 
 SELECT * 
 FROM asa.dxx
 WHERE unitprice AND unitcost >= 600;
 
 SELECT *
 FROM asa.dxx
 WHERE Channel = 'Wholesale' AND Currency_code = 'NZD'
 ORDER BY OrderDate;
 
 SELECT * 
 FROM asa.dxx
 WHERE CustNameIndx = 23 AND unitprice * Unitcost > 3000;
 
 SELECT * 
 FROM asa.dxx
 WHERE CustNameIndx BETWEEN 10 AND 40  AND unitprice * Unitcost > 3000;
 
 SELECT * 
 FROM asa.dxx 
 WHERE Channel LIKE 'd%';
 
-- importing a new data with more strings


SELECT * 
FROM asa.bp;
 
-- QUERYING THE TABLE BASED ON THE NAMES...
SELECT *
FROM asa.bp
LIMIT 3, 6;
-- next we pick the columns 6 and 7  that end with 3 and 7.
SELECT *
FROM asa.bp
WHERE TotalBiscuitsMade LIKE '%3' AND GoodMadeBiscuits LIKE '%7';

-- products with s in the last
SELECT * 
FROM asa.bp
WHERE Product REGEXP '[b-n]s';
 -- we use the regular expression REGEXP to search different characters.
 SELECT * 
 FROM asa.bp 
 WHERE Product REGEXP 'Custard';
 
 -- we use HR table
 
 USE hrd;
 SELECT *
 FROM asa.hrd;
 
 SELECT *
 FROM asa.hrd
 WHERE lastname REGEXP 'leo$|jen|sha';
 
 SELECT *
 FROM asa.hrd
 WHERE lastname REGEXP 'Jenna|Shanna';
 
 -- we would pick: 
 -- first names are steans and king, 
 -- last names end with ff and le, 
 -- last names start with li or contains na
 -- last names contain c followed by j or b
 
 SELECT *
 FROM asa.hrd
 WHERE firstname REGEXP 'Steans|King';
 
 SELECT *
 FROM asa.hrd
 WHERE lastname REGEXP 'ff$|le$';
 SELECT * 
 FROM asa.hrd
 WHERE lastname REGEXP 'c|jb';
					
-- Joining tables

USE dee;
SELECT *
FROM dee.hrd2;

-- JOINING OF TABLES
SELECT * 
FROM asa.hrd
JOIN asa.hrd2 ON hrd.Age = hrd2.Age;

SELECT * 
FROM asa.hrd 
JOIN asa.hrd2 ON hrd.Age = hrd2.Age
WHERE hrd.Sex = 'Male' AND hrd2.Age > 35;
SELECT * 
FROM asa.hrd
JOIN asa.hrd2 
ON hrd.Age + 3 = hrd2.Age * 2;
SELECT *
FROM asa.hrd, asa.hrd2
WHERE hrd.Age = hrd2.Age;

SELECT * 
FROM dee.hrd3
WHERE Date <= '2017-09-20' AND Age <= 40;

SELECT firstname,Zip, Age, MaritalDesc, date
FROM dee.hrd3
WHERE Date BETWEEN '2017-09-12' and '2017-11-01'
 OR MaritalDesc = 'Marrried'
 ORDER BY firstname;
 
 SELECT *
 FROM dee.hrd3
 WHERE AGE IN (35,37,40) AND State = 'MA' 
 OR Sex = 'Male' AND MaritalDesc = 'Married';
 
 -- WORKING WITH TWO DATABASES
 
 SELECT
 hrd.age,
 hrd.state,
 hrd.sex,
 hrd.zip
 FROM asa.hrd 
 JOIN asa.hrd2 
 ON hrd.Age = hrd2.Age
 JOIN dee.hrd3 
 ON hrd3.Zip = hrd.Zip
 ORDER BY hrd.state;
 
 -- OUTTER JOIN
 SELECT 
 hrd.Age,
 hrd.Sex,
 hrd.MaritalDesc
 FROM asa.hrd
 LEFT JOIN asa.hrd2
 ON hrd.age = hrd2.age
 ORDER BY hrd.firstname
 
 
 

 
 
 

