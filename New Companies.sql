-- https://www.hackerrank.com/challenges/the-company/
SELECT c.company_code, 
       c.founder,
       COUNT(DISTINCT e.lead_manager_code),
       COUNT(DISTINCT e.senior_manager_code),
       COUNT(DISTINCT e.manager_code),
       COUNT(DISTINCT e.employee_code)
FROM Company c
RIGHT JOIN Employee e
ON e.company_code=c.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code