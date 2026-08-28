use P_set;
-- 1. WHERE vs HAVING
-- WHERE → filters individual rows
SELECT *
FROM employees1
WHERE salary > 30000;

-- HAVING → filters groups
SELECT department, AVG(salary) AS average_salary
FROM employees1
GROUP BY department
HAVING AVG(salary) > 50000;
-- WHERE filters rows; HAVING filters groups.

-- 2. Basic HAVING
SELECT department, COUNT(*) AS employee_count
FROM employees1
GROUP BY department
HAVING COUNT(*) >= 2;  -- Show only departments that have more than or containing 2 employees.

-- 3. HAVING with COUNT()
SELECT department, COUNT(*) AS employee_count
FROM employees1
GROUP BY department
HAVING COUNT(*) >= 2;  

-- 4. HAVING with SUM()
SELECT department, SUM(salary) AS total_salary
FROM employees1
GROUP BY department
HAVING SUM(salary) > 40000; -- Show departments whose total salary exceeds 40,000

-- 5. HAVING with AVG()
SELECT department, AVG(salary) AS average_salary
FROM employees1
GROUP BY department
HAVING AVG(salary) > 50000;

-- 6. HAVING with MIN() / MAX()
-- Highest salary condition
SELECT department, MAX(salary) AS maximum_salary
FROM employees1
GROUP BY department
HAVING MAX(salary) > 10000;
-- Lowest salary condition
SELECT department, MIN(salary) AS minimum_salary
FROM employees1
GROUP BY department
HAVING MIN(salary) >= 30000;

-- 7. WHERE + GROUP BY + HAVING
SELECT department, AVG(salary) AS average_salary
FROM employees1
WHERE salary > 30000
GROUP BY department
HAVING AVG(salary) > 50000;

-- 8. HAVING with multiple conditions
SELECT department, COUNT(*) AS employee_count,
	AVG(salary) AS average_salary
FROM employees1
GROUP BY department
HAVING COUNT(*) >= 2
   AND AVG(salary) > 50000;

-- 9. HAVING + ORDER BY
SELECT department, AVG(salary) AS average_salary
FROM employees1
GROUP BY department
HAVING AVG(salary) > 40000
ORDER BY average_salary DESC;
-- Find departments with average salary above 40,000, then show the highest average first.

-- 10. HAVING + ORDER BY + LIMIT
SELECT department, AVG(salary) AS average_salary
FROM employees1
GROUP BY department
HAVING AVG(salary) > 40000
ORDER BY average_salary DESC
LIMIT 1;

/* WHERE VS HAVING
WHERE → filter rows BEFORE grouping.
HAVING → filter groups AFTER grouping.
*/
SELECT department, COUNT(*) AS employee_count
FROM employees1
WHERE salary > 30000
GROUP BY department
HAVING COUNT(*) >= 2;


-- SQL query pattern
SELECT department,
	COUNT(*) AS employee_count,
	AVG(salary) AS average_salary
FROM employees1
WHERE salary > 30000
GROUP BY department
HAVING COUNT(*) >= 2
ORDER BY average_salary DESC
LIMIT 1;

/*
| Keyword    | What it filters |
| ---------- | --------------- |
| `WHERE`    | Rows            |
| `GROUP BY` | Creates groups  |
| `HAVING`   | Groups          |
| `ORDER BY` | Sorts results   |
| `LIMIT`    | Limits rows     |
*/