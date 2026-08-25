use P_set;
-- 1. ORDER BY
-- Ascending order — ASC
SELECT *
FROM students3
ORDER BY age ASC;

-- ASC is the default, so this also works:
SELECT *
FROM students3
ORDER BY age;

-- 2. Descending order — DESC
SELECT *
FROM students3
ORDER BY age DESC;

-- 3. Sorting text  (You can sort a text column:)
SELECT *
FROM students3
ORDER BY name ASC;

SELECT *
FROM students3
ORDER BY name DESC;

-- 4. Sorting dates
SELECT *
FROM employees3
ORDER BY join_date ASC;

SELECT *
FROM employees3
ORDER BY join_date DESC;

-- 5. Sorting by multiple columns
SELECT *
FROM students3
ORDER BY city ASC, age DESC;  -- First sort by city, then sort matching cities by age.
-- If two students have the same city, then it sorts those students by:  age → descending

-- 6. LIMIT (LIMIT controls how many rows are returned.)
SELECT *
FROM students3
LIMIT 2;

-- 7. ORDER BY + LIMIT 
SELECT *
FROM students3
ORDER BY age DESC  -- oldest first
LIMIT 1;           -- take only the first row

-- 8. LIMIT with OFFSET 
SELECT *
FROM students3
ORDER BY age ASC
LIMIT 2, 3;       -- 2 → skip first 2 rows
                  -- 3 → return next 3 rows
                  
-- 
SELECT name, age, city
FROM students3
WHERE age >= 20
ORDER BY age DESC
LIMIT 5;
-- Find students aged 20+, sort them from oldest to youngest, and show only 5.

/* 
ORDER BY age ASC      → youngest → oldest
ORDER BY age DESC     → oldest → youngest

LIMIT 5               → maximum 5 rows

ORDER BY salary DESC
LIMIT 3               → top 3 salaries

LIMIT 5, 10           → skip 5, return 10
*/