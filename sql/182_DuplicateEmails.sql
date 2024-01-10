/*
Question: https://leetcode.com/problems/duplicate-emails/description/

table Person
return: emails
that are duplicate -> id different, email same
any order
algo: self join
*/

-- Runtime 650ms
SELECT DISTINCT p1.email 
FROM Person p1, Person p2
WHERE p1.email = p2.email 
AND p1.id != p2.id
;
