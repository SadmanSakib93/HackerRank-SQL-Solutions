-- https://www.hackerrank.com/challenges/binary-search-tree-1/
WITH root AS(
    SELECT N, 'Root' AS type
    FROM BST
    WHERE P IS NULL
),
leaf AS(
    SELECT N, 'Leaf' AS type
    FROM BST
    WHERE N NOT IN (SELECT N FROM root) AND N NOT IN (SELECT DISTINCT P FROM BST WHERE P IS NOT NULL)
),
inner_t AS(
    SELECT N, 'Inner' AS type
    FROM BST
    WHERE N NOT IN (
        (SELECT N FROM root)
        UNION 
        (SELECT N FROM leaf)
    )
)

(SELECT * FROM root)
UNION 
(SELECT * FROM leaf)
UNION
(SELECT * FROM inner_t)
ORDER BY N