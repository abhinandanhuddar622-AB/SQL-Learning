use P_set;
select * from student_details;

-- Insert values into all columns
INSERT INTO student_details
VALUES (1, 'Abhi', 22, 'Bangalore'); -- The values must be in the same order as the columns.

-- Insert using column names
INSERT INTO student_details (student_id, student_name, age, city)    -- which value belongs to which column.
VALUES (2, 'Abhinandan', 22, 'Bangalore');

-- Insert multiple rows with one query
INSERT INTO student_details (student_id, student_name, age, city)
VALUES
(3, 'Abhi', 22, 'Bangalore'),
(4, 'Rahul', 23, 'Mumbai'),
(5, 'John', 21, 'Delhi');

-- AUTO_INCREMENT
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,   -- automatically generates the ID.
    name VARCHAR(50),
    age INT);

INSERT INTO students (name, age)
VALUES ('Abhi', 22);  -- don't need to provide student_id

select * from students;

-- DEFAULT values
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50) DEFAULT 'IT',
    experience INT DEFAULT 0
);

INSERT INTO employees (name)
VALUES ('Abhi');  -- automatically uses default values

-- Explicitly use DEFAULT
INSERT INTO employees (name, department, experience)
VALUES ('Abhi', DEFAULT, DEFAULT);

-- Insert NULL
INSERT INTO employees (name, department, experience)
VALUES ('Abhi',DEFAULT, NULL);  -- If a column allows NULL, you can explicitly insert NULL.

-- Strings need quotes
INSERT INTO employees (name, department, experience)
VALUES ('Abhi', default,8);  -- Use quotes for text('Abhi','2026-08-20') and Numbers don't need quotes(1,34,56).

-- INSERT and column order
INSERT INTO students (name,age)
VALUES ('Abhinandan', 22);