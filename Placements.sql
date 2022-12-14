-- https://www.hackerrank.com/challenges/placements/
SELECT friend_list.Name
FROM (SELECT s.ID, s.Name, f.Friend_ID, p.Salary
      FROM Students s
      INNER JOIN Friends f ON s.ID=f.ID
      INNER JOIN Packages p ON f.Friend_ID=p.ID) friend_list
INNER JOIN Packages p ON friend_list.ID=p.ID
WHERE p.Salary<friend_list.Salary
ORDER BY friend_list.Salary