-- https://www.hackerrank.com/challenges/challenges/
WITH temp1 AS(
    SELECT h.hacker_id, h.name, COUNT(*) AS challenges_created
    FROM Challenges c
    INNER JOIN Hackers h ON c.hacker_id = h.hacker_id
    GROUP BY h.hacker_id, h.name
    ORDER BY challenges_created DESC, h.hacker_id ASC
),
temp2 AS(
    SELECT challenges_created, COUNT(*) AS same_challange_count
    FROM temp1
    GROUP BY challenges_created
)
SELECT a.hacker_id, a.name, a.challenges_created
FROM temp1 a
INNER JOIN temp2 b ON a.challenges_created = b.challenges_created
WHERE same_challange_count=1 OR a.challenges_created=(
    SELECT MAX(challenges_created) FROM temp1
);