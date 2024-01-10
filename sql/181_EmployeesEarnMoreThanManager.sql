
/*
Question: https://leetcode.com/problems/employees-earning-more-than-their-managers/
table: Employee
output: name alias: Employee
condition: Employee's salary > mployee(managerID = emloyee's)salary

algo: left join
1. join on Id & managerId
2. compare salary, based on condition
*/

SELECT e1.name AS Employee 
FROM Employee as e1
LEFT JOIN Employee as e2
ON e1.ManagerID = e2.Id
WHERE e1.Salary > e2.Salary
;
