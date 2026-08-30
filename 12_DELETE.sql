use P_set;
-- DELETE
-- DELETE is used to remove existing rows from a table.

-- 1. Basic DELETE
/* syntax:
DELETE FROM table_name
WHERE condition;
*/
DELETE FROM student
WHERE student_id = 5;   -- This removes the student whose student_id is 5

-- 2. DELETE with WHERE
DELETE FROM employees3
WHERE emp_id = 10;   -- Only employee 10 is deleted.

-- 3. Delete multiple rows
DELETE FROM employees3
WHERE department = 'IT';   -- This deletes all employees in IT.

-- 4. DELETE with comparison operators
DELETE FROM employees3
WHERE salary < 30000;   -- This deletes employees whose salary is below 30,000.

-- 5. DELETE with IN
DELETE FROM employees3
WHERE department IN ('IT', 'HR');  -- This deletes employees from IT or HR.

-- 6. DELETE with BETWEEN
DELETE FROM employees3
WHERE salary BETWEEN 30000 AND 40000;
-- This deletes employees whose salary is between 30,000 and 40,000, including both values.

-- 7. DELETE with LIKE
DELETE FROM employees3
WHERE name LIKE 'A%';   -- This deletes employees whose names start with A.

-- 8. DELETE with AND
DELETE FROM employees3
WHERE department = 'IT'   -- who satisfy both conditions:
AND experience < 2;                                    -- IT AND experience < 2

-- 9. DELETE with OR
DELETE FROM employees3
WHERE department = 'IT'  
OR department = 'HR';   -- This deletes employees from IT or HR.

-- 10. The dangerous mistake
DELETE FROM employees3;   -- Delete ALL rows from employees3.

-- 11. DELETE vs TRUNCATE vs DROP
-- Delete selected rows:
DELETE FROM students3
WHERE age < 18; 

-- Delete all rows:
 TRUNCATE TABLE students3;
 
-- Delete the entire table:
 DROP TABLE students3;
 
 /*
| Command    | Data                  | Table           |
| ---------- | --------------------- | --------------- |
| `DELETE`   | Removes selected rows | Remains         |
| `TRUNCATE` | Removes all rows      | Remains         |
| `DROP`     | Removes everything    | ❌ Table removed |
*/