-- https://www.hackerrank.com/challenges/symmetric-pairs/
SELECT DISTINCT a.*
FROM Functions a
INNER JOIN Functions b ON (a.X=b.Y AND a.Y=b.X)
WHERE a.X<=a.Y
GROUP BY a.X, a.Y
HAVING COUNT(*)>1 OR a.X!=a.Y
ORDER BY a.X