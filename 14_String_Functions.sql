use P_set;
-- SQL String Functions

-- 1. CONCAT() — Join strings
SELECT CONCAT(name, ' - ', city) AS student_info
FROM students3;  
-- If one of the values is NULL, MySQL's CONCAT() returns NULL.

-- 2. UPPER() — Convert to uppercase
SELECT UPPER(name) AS name_upper
FROM students3;

-- 3. LOWER() — Convert to lowercase
SELECT LOWER(name)
FROM students3;

-- 4. LENGTH() — Find string length in bytes
SELECT LENGTH(name)
FROM students3;

-- 5. CHAR_LENGTH() — Find number of characters
SELECT CHAR_LENGTH(name)
FROM students3;

/*LENGTH()       → bytes
CHAR_LENGTH()  → characters*/

-- 6. TRIM() — Remove spaces from both sides
SELECT TRIM(name)     -- '   Abhi   '  ->   Abhi
FROM students3;

-- 7. LTRIM() — Remove left-side spaces
SELECT LTRIM(name)
FROM students3;

-- 8. RTRIM() — Remove right-side spaces
SELECT RTRIM(name)
FROM students3;