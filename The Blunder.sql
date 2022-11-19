-- https://www.hackerrank.com/challenges/the-blunder/
SELECT CEIL(AVG(Salary)-AVG(REPLACE(Salary, '0', '')))
FROM EMPLOYEES