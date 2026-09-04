use P_set;

-- CASE  (it like an if / else if / else)
-- CASE is used when you want SQL to check conditions and return different values depending on which condition is true.
-- 1. Basic CASE
SELECT name, age,
	CASE
		WHEN age >= 18 THEN 'Adult'
		ELSE 'Minor'
	END AS age_status
FROM students3;
/*CASE → starts the condition
  WHEN → condition
  THEN → result if condition is true
  ELSE → result if no condition is true
  END → ends the CASE*/
  
-- 2. Multiple WHEN conditions
SELECT name, age,
	CASE
		WHEN age < 18 THEN 'Minor'                   -- age < 18 true return Minor
		WHEN age >= 18 AND age < 60 THEN 'Adult'     -- 18–59  true return Adult
		ELSE 'Senior'                                -- 60+ return Senior
	END AS age_group                                 -- as age_group
FROM students3;  

-- 3. CASE with salary
SELECT name, salary,
	CASE
		WHEN salary < 30000 THEN 'Low'
		WHEN salary BETWEEN 30000 AND 60000 THEN 'Medium'
		ELSE 'High'
	END AS salary_category
FROM employees1;

-- 4. CASE without ELSE
SELECT name, age,
	CASE
		WHEN age >= 18 THEN 'Adult'   -- If the condition isn't true, SQL returns: NULL
	END AS status
FROM students3;