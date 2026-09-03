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
SELECT TRIM(name)     -- '   Abhi   '  ->   'Abhi'
FROM students3;

-- 7. LTRIM() — Remove left-side spaces
SELECT LTRIM(name)   -- '    Abhi'   ->  'Abhi'
FROM students3;

-- 8. RTRIM() — Remove right-side spaces
SELECT RTRIM(name)    --  'Abhi     '  ->  'Abhi'
FROM students3;

-- 9. SUBSTRING() — Extract part of a string
-- SUBSTRING(string, start_position, length)
SELECT SUBSTRING(name, 1, 3)    -- Abhi  -> Abh  (123)
FROM students3;

-- 10. LEFT() — Get characters from the beginning
-- LEFT(string, number_of_characters)
SELECT LEFT(name, 3)    -- Abhi ->  Abh
FROM students3;

-- 11. RIGHT() — Get characters from the end
-- RIGHT(string, number_of_characters)
SELECT RIGHT(name, 3)   -- Abhi ->  bhi
FROM students3;

-- 12. REPLACE() — Replace text
-- REPLACE(string, old_text, new_text)
SELECT REPLACE(city, 'Bangalore', 'Bengaluru')
FROM students3;

-- 13. REVERSE() — Reverse a string
SELECT REVERSE(name)    -- Abhi  ->   ihbA
FROM students3;

-- 14. LOCATE() — Find the position of text
-- LOCATE(search_string, original_string)
SELECT LOCATE('h', 'Abhinandan');     -- 3

-- 15. INSTR() — Also find position
-- INSTR(original_string, search_string)
SELECT INSTR('Abhinandan', 'h');   -- 3

-- 16. Combining String Functions
SELECT UPPER(TRIM(name)) AS cleaned_name
FROM students3;

-- 17. String Functions with WHERE
SELECT *
FROM students3
WHERE UPPER(city) = 'BENGALORE';     -- UPPER It changes the value temporarily for comparison

-- 18. String Functions with ORDER BY
SELECT name
FROM students3
ORDER BY LENGTH(name);  -- shows shortest name to the longest name.


/*
|    Function     |         Purpose               |
| --------------- | ----------------------------- |
| `CONCAT()`      | Join strings                  |
| `UPPER()`       | Convert to uppercase          |
| `LOWER()`       | Convert to lowercase          |
| `LENGTH()`      | Length in bytes               |
| `CHAR_LENGTH()` | Number of characters          |
| `TRIM()`        | Remove spaces from both sides |
| `LTRIM()`       | Remove left spaces            |
| `RTRIM()`       | Remove right spaces           |
| `SUBSTRING()`   | Extract part of string        |
| `LEFT()`        | Get characters from beginning |
| `RIGHT()`       | Get characters from end       |
| `REPLACE()`     | Replace text                  |
| `REVERSE()`     | Reverse string                |
| `LOCATE()`      | Find position                 |
| `INSTR()`       | Find position                 |
*/
