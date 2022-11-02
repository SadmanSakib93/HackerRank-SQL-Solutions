-- https://www.hackerrank.com/challenges/weather-observation-station-12
SELECT DISTINCT(CITY) 
FROM STATION 
WHERE CITY REGEXP "^[^AEIOU].*[^aeiou]$"