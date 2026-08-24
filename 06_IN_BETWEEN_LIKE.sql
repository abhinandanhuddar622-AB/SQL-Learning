-- 1. IN (compare a column with multiple possible values.)
SELECT *
FROM students3
WHERE city IN ('Bengalore', 'Mumbai');   -- City can be Bangalore OR Mumbai.

-- 2. NOT IN   (NOT IN means the value should not be any of the listed values.)
SELECT *
FROM students3
WHERE city NOT IN ('Bengalore', 'Mumbai');  -- This returns students whose city is neither Bangalore nor Mumbai.

-- 3. BETWEEN  (BETWEEN checks whether a value is within a range.)
SELECT *
FROM students3
WHERE age BETWEEN 20 AND 22;

-- 4. NOT BETWEEN  (This returns ages outside the range.)
SELECT *
FROM students3
WHERE age NOT BETWEEN 20 AND 22;

-- 5. LIKE   (LIKE is used for pattern matching, especially with text.)
SELECT *
FROM students3
WHERE name LIKE 'A%';   -- Find names that start with A.

-- 6. % wildcard  (% means: Zero or more characters)

-- Starts with A
SELECT *
FROM students3
WHERE name LIKE 'A%';   -- Find names that start with A.

-- Ends with a
SELECT *
FROM students3
WHERE name LIKE '%a';   -- Find names that ends with a.

-- Contains "a"
SELECT *
FROM students3
WHERE name LIKE '%a%';   -- contains A

-- 7. _ wildcard  ( _ means: Exactly one character)
SELECT *
FROM students3
WHERE name LIKE 'A_i';   -- A + one character + i

-- 8. NOT LIKE  (Used when you don't want a particular pattern.)
SELECT *
FROM students3
WHERE name NOT LIKE 'A%';  -- Names that do not start with A.

-- 9. Combining them with AND / OR
SELECT *
FROM students3
WHERE age BETWEEN 20 AND 25
AND city IN ('Bengalore', 'Mumbai');

/* 
IN          → one of these values
NOT IN      → none of these values

BETWEEN     → within a range
NOT BETWEEN → outside a range

LIKE        → matches a pattern
NOT LIKE    → doesn't match a pattern

%           → zero or more characters
_           → exactly one character 
 
*/

