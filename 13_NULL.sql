use P_set;
-- 1. What is NULL? 
-- No value / unknown value / value not provided)

-- 2. IS NULL  (To find rows where a column contains NULL)
SELECT *
FROM students3
WHERE city IS NULL;   -- Show students whose city has no value.

-- 3. IS NOT NULL
SELECT *
FROM students3
WHERE city IS NOT NULL;     -- To find rows where a column has a value

-- 4. ❌ Don't use = NULL

-- 5. NULL with COUNT()
SELECT COUNT(*)
FROM students3;   -- COUNT(*) counts all rows.

-- 6. NULL with SUM(), AVG(), MIN(), MAX()
SELECT AVG(salary)
FROM employees3;

-- 7. NULL with WHERE
SELECT *
FROM employees3
WHERE department = 'IT'
AND experience IS NULL;   -- Find IT employees whose experience is not available.

-- 8. NULL and comparison operators
SELECT *
FROM employees1
WHERE experience IS NULL;
-- (OR)
SELECT *
FROM employees1
WHERE experience IS NOT NULL;

-- 9. NULL with AND / OR
SELECT *
FROM employees1
WHERE city IS NULL
AND age >= 18;
-- (OR)
SELECT *
FROM employees1
WHERE city IS NULL
OR age IS NULL;

-- 10. NULL with UPDATE
UPDATE students3
SET city = NULL
WHERE student_id = 5;

-- 11. NULL with DELETE
DELETE FROM students3
WHERE city IS NULL;

-- 12. COALESCE()    - COALESCE() is used to return the first non-NULL value.
SELECT name,
	COALESCE(city, 'Unknown') AS city
FROM students3;

-- 13. COALESCE() with multiple values
SELECT COALESCE(city, age, 'Unknown')
FROM students3;   -- First check city. If it is NULL, check age. If that is also NULL, use 'Unknown'.

-- 14. NULL and GROUP BY  (GROUP BY can create a separate group for NULL.)
SELECT age, COUNT(*) AS student_count
FROM students3
GROUP BY age;

-- 15. NULL and DISTINCT   (DISTINCT treats NULL as one distinct value.)
SELECT DISTINCT city
FROM students3;

/*  Most Important Rules :-
Rule 1:
NULL means missing/unknown value.

Rule 2:
Use IS NULL, not = NULL.

Rule 3:
Use IS NOT NULL, not != NULL.

Rule 4:
COUNT(*) counts rows; COUNT(column) ignores NULL.

Rule 5:
SUM(), AVG(), MIN(), and MAX() generally ignore NULL values.

Rule 6:
COALESCE() can replace NULL with another value.
*/
