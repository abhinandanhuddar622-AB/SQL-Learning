use P_set;
-- GROUP BY
/*GROUP BY is used to group rows that have the same value
and then perform aggregate calculations on each group. */

-- 1. Basic GROUP BY
SELECT department, COUNT(*) AS employee_count
FROM employees1
GROUP BY department;  -- number of employees in each department

-- 2. GROUP BY with SUM()
SELECT department, sum(salary) AS total_salary
FROM employees1
GROUP BY department;   -- Find the total salary for each department

-- 3. GROUP BY with AVG()
SELECT department, AVG(salary) AS average_salary
FROM employees1
GROUP BY department;  -- Find the average salary for each department

-- 4. GROUP BY with MIN() and MAX()
SELECT department,
	MIN(salary) AS minimum_salary,    -- lowest and highest salary in every department.
	MAX(salary) AS maximum_salary
FROM employees1
GROUP BY department;

-- 5. Multiple aggregate functions with GROUP BY
SELECT department,
	COUNT(*) AS employee_count,
	SUM(salary) AS total_salary,
	AVG(salary) AS average_salary,
	MIN(salary) AS minimum_salary,
	MAX(salary) AS maximum_salary
FROM employees1
GROUP BY department;

-- 6. Grouping by multiple columns
SELECT department, name, COUNT(*) AS employee_count
FROM employees1
GROUP BY department, name;

-- 7. GROUP BY with WHERE
SELECT department, AVG(salary) AS average_salary
FROM employees1
WHERE salary > 30000
GROUP BY department;

-- 8. GROUP BY with ORDER BY
SELECT department, AVG(salary) AS average_salary
FROM employees1
GROUP BY department
ORDER BY average_salary DESC;

-- 9. GROUP BY + ORDER BY + LIMIT
SELECT department, AVG(salary) AS average_salary
FROM employees1
GROUP BY department
ORDER BY average_salary DESC
LIMIT 1;

-- 10. GROUP BY with COUNT(DISTINCT)
SELECT department,
	COUNT(DISTINCT name) AS name_count
FROM employees1
GROUP BY department;

-- 11. NULL and GROUP BY
SELECT department, COUNT(*)
FROM employees1
GROUP BY department;

/*
With GROUP BY:
Every column in SELECT must be either GROUP BY or an aggregate function.
SELECT column → GROUP BY it OR aggregate it.
*/

