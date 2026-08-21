use P_set;

-- 1. Select all columns — *
SELECT * FROM students;  -- * means all columns.

-- 2. Select specific columns
SELECT name, age
FROM students;

SELECT name
FROM students;

-- 3. Column aliases — AS
SELECT name AS student_name  -- The actual column name in the table doesn't change.
FROM students;
-- Also
SELECT name student_name  -- without AS
FROM students;

-- 4. Table aliases
SELECT s.name
FROM students AS s;  -- temporary name to a table

-- 5. DISTINCT
SELECT DISTINCT name  -- DISTINCT removes duplicate values(only from the displayed result).
FROM students; 

-- 6. Calculations in SELECT
SELECT 10 + 20;
SELECT * FROM employees1; 
SELECT experience, experience + 5
FROM employees;

SELECT salary, salary + 5000 AS increased_salary
FROM employees1;

-- 7. Arithmetic operators
-- +   Addition
-- -   Subtraction
-- *   Multiplication
-- /   Division
select salary, salary * 12 AS annual_salary
FROM employees1;

-- 8. CONCAT()
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM fullname;

-- remember
/*SELECT *                  → all columns
SELECT name               → specific column
SELECT name, age          → multiple columns
AS                        → temporary alias
DISTINCT                  → remove duplicates
SELECT salary * 12        → calculation
CONCAT()                  → combine text*/
