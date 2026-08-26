-- SQL Aggregate Functions
-- 1. COUNT()  (counts rows or values.)

-- COUNT(*)   Counts All rows.
SELECT COUNT(*)
FROM students3;

-- COUNT(column)    Counts non-NULL values in that column:
SELECT COUNT(age)
FROM students3;   
-- If there are 10 rows but 2 have NULL age:- COUNT(*) → 10   COUNT(age) → 8

--  2. SUM()   calculates the total of numeric values.
SELECT SUM(salary)   -- This gives the total salary.
FROM employees1;
-- OR 
SELECT SUM(salary) AS total_salary
FROM employees1; 

-- 3. AVG()   calculates the average.
SELECT AVG(age)
FROM students3;
-- OR
SELECT AVG(age) AS average_age
FROM students3;
-- AVG() ignores NULL values.

-- 4. MIN()   returns the smallest value.
SELECT MIN(age)
FROM students3;

-- 5. MAX()  returns the largest value.
SELECT MAX(age)
FROM students3;

/* 
COUNT() → How many?
SUM()   → How much total?
AVG()   → What is the average?
MIN()   → What is the smallest?
MAX()   → What is the largest?
*/

-- 6. Using multiple aggregate functions together
SELECT
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM employees1;

-- 7. DISTINCT with aggregate functions
SELECT COUNT(DISTINCT department)
FROM employees1;

-- 8. Aggregate functions and NULL
SELECT COUNT(salary) FROM employees1;

-- 9. Aggregate functions with WHERE
SELECT AVG(salary)
FROM employees1
WHERE department = 'IT';
-- Find the average salary of only IT employees.
