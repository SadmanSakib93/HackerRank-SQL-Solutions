-- https://www.hackerrank.com/challenges/earnings-of-employees/
SELECT months*salary as earnings, COUNT(*)
FROM Employee
GROUP BY earnings
ORDER BY earnings DESC
LIMIT 1