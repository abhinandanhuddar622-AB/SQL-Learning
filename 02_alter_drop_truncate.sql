use P_set;

select * from students;

describe table students;

-- Write one ALTER TABLE query that adds both columns
alter table students
add column phone varchar(15);

-- MODIFY COLUMN
alter table students
modify column age int not null;

-- CHANGE COLUMN
alter table students
change column name full_name varchar(100);

-- RENAME COLUMN
alter table students 
rename column full_name to student_name;

-- DROP COLUMN
alter table students
drop column phone;

-- RENAME TABLE
rename table students to student_details;

select * from student_details;

-- TRUNCATE TABLE
truncate table student_details;

-- DROP TABLE
drop table student_details;