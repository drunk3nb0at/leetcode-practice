/*
Question: https://leetcode.com/problems/duplicate-emails/description/

table Person
return: emails
that are duplicate -> id different, email same
any order
algo: self join

Reference:
1. https://blog.csdn.net/weixin_43972154/article/details/123825607
2. https://www.w3schools.com/sql/sql_join_self.asp

*/

-- Runtime 650ms
SELECT DISTINCT p1.email 
FROM Person p1, Person p2
WHERE p1.email = p2.email 
AND p1.id != p2.id
;
