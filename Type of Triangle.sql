-- https://www.hackerrank.com/challenges/what-type-of-triangle/
SELECT CASE
    WHEN A+B>C AND B+C>A AND C+A>B THEN
        CASE
            WHEN A=B AND B=C THEN "Equilateral"
            WHEN A=B OR B=C OR C=A THEN "Isosceles"
            WHEN A!=B AND B!=A AND C!=A THEN "Scalene"        
        END
    ELSE "Not A Triangle"
    END
FROM TRIANGLES;