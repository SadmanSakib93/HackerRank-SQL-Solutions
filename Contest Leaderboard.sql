-- https://www.hackerrank.com/challenges/contest-leaderboard/
SELECT h.hacker_id, h.name, SUM(s.score)
FROM Hackers h
LEFT JOIN (SELECT hacker_id, challenge_id, MAX(score) as score
            FROM Submissions 
            GROUP BY hacker_id, challenge_id) s
ON h.hacker_id=s.hacker_id
GROUP BY h.hacker_id, h.name
HAVING SUM(s.score)!=0
ORDER BY SUM(s.score) DESC, h.hacker_id