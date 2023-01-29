-- https://www.hackerrank.com/challenges/draw-the-triangle-2/
SET @repeat_times = 0;
SELECT REPEAT('* ', @repeat_times := @repeat_times + 1) 
FROM information_schema.tables
LIMIT 20