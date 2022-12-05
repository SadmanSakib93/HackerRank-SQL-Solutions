-- https://www.hackerrank.com/challenges/african-cities/
SELECT ci.NAME
FROM CITY ci
LEFT JOIN COUNTRY co
ON ci.COUNTRYCODE=co.CODE
WHERE co.CONTINENT='Africa'