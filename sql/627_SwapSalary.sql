/*
Question 
https://leetcode.com/problems/swap-salary/description/
*/

-- Runtime 663ms solution
UPDATE Salary
SET sex = (CASE WHEN sex = 'm' THEN 'f'
ELSE 'm'
END
)
;

-- Runtime 475ms solution
UPDATE Salary
SET sex = CASE WHEN sex = 'm' THEN 'f'
ELSE 'm'
END
;

-- Runtime 342ms solution
-- XOR operator, faster, lower readability
UPDATE Salary 
SET sex = CHAR(ASCII('f') ^ ASCII('m') ^ ASCII(sex));

