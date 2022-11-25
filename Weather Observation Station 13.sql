-- https://www.hackerrank.com/challenges/weather-observation-station-13/
SELECT ROUND(SUM(LAT_N), 4)
FROM STATION
WHERE LAT_N>38.7889 AND LAT_N<137.2345