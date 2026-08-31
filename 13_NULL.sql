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
WHERE city IS NOT NULL;

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
