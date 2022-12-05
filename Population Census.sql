-- https://www.hackerrank.com/challenges/asian-population/
SELECT SUM(ci.POPULATION)
FROM CITY ci
INNER JOIN COUNTRY cou
ON ci.COUNTRYCODE=cou.CODE
WHERE CONTINENT='Asia'