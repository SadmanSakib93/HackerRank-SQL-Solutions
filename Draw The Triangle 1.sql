-- https://www.hackerrank.com/challenges/draw-the-triangle-1/
SET @repeat_times = 21;
SELECT REPEAT('* ', @repeat_times := @repeat_times - 1) 
FROM information_schema.tables