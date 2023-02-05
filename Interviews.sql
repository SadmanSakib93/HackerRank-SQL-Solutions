-- https://www.hackerrank.com/challenges/interviews/problem
SELECT con.contest_id, con.hacker_id, 
        con.name, SUM(ss.total_submissions) AS sum_total_submissions, 
        SUM(ss.total_accepted_submissions) AS sum_total_accepted_submissions, 
        SUM(vs.total_views) AS sum_total_views, 
        SUM(vs.total_unique_views) AS sum_total_unique_views
FROM Contests con
LEFT JOIN Colleges coll ON con.contest_id = coll.contest_id
LEFT JOIN Challenges cha ON coll.college_id = cha.college_id
LEFT JOIN (SELECT challenge_id, SUM(total_views) AS total_views, SUM(total_unique_views) AS total_unique_views
            FROM View_Stats 
            GROUP BY challenge_id) vs ON cha.challenge_id = vs.challenge_id
LEFT JOIN (SELECT challenge_id, SUM(total_submissions) AS total_submissions, SUM(total_accepted_submissions) AS total_accepted_submissions
            FROM Submission_Stats 
            GROUP BY challenge_id) ss ON cha.challenge_id = ss.challenge_id
GROUP BY con.contest_id, con.hacker_id, con.name
HAVING sum_total_submissions+sum_total_accepted_submissions+sum_total_views+sum_total_unique_views>0
ORDER BY con.contest_id