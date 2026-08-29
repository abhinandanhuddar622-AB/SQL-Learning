use P_set;
-- UPDATE
-- UPDATE is used to change existing data (rows) in a table.

-- 1. Basic UPDATE
/* syntax:
UPDATE table_name
SET column_name = new_value
WHERE condition;
*/
UPDATE students1
SET age = 25
WHERE student_id = 1;  -- This changes the age of the student whose student_id is 1.

select * from students1;
select * from employees1;

-- 2. Update text values
UPDATE students3
SET city = 'Bangalore'   -- Text values need quotes:
WHERE student_id = 2;

-- 3. Update multiple columns
UPDATE students1
SET age = 24,
    city = 'Mumbai'
WHERE student_id = 2;

-- 4. Update multiple rows
UPDATE employees1
SET department = 'IT'
WHERE city = 'Bangalore';    -- Every employee whose city is Bangalore will be updated.

-- 5. UPDATE with WHERE
UPDATE employees1
SET salary = 50000
WHERE emp_id = 1;   -- WHERE determines which rows will be changed.

-- 6. Update using comparison operators
UPDATE employees1
SET salary = salary + 5000
WHERE salary < 40000;

-- 7. Update using calculations
UPDATE employees1
SET salary = salary * 1.10   -- Increase salary by 10%
WHERE department = 'IT';

-- 8. Update with IN
UPDATE employees1
SET salary = salary + 1000
WHERE department IN ('IT', 'HR');

-- 9. Update with BETWEEN
UPDATE employees1
SET status = 'Eligible'
WHERE salary BETWEEN 40000 AND 60000;

-- 10. Update with LIKE
UPDATE employees1
SET status = 'A'
WHERE name LIKE 'A%';

/*
UPDATE → What should change?
WHERE  → Which rows should change?
SET    → What new value should they get?

One column,Multiple columns,Calculation,Multiple conditions,Default,NULL....
*/