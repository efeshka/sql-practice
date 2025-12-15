-- LeetCode 181: Employees Earning More Than Their Managers 

-- DB: PostgreSQL 

-- Approach: 
-- Use INNER JOIN to find managers employee_id
-- Compare managers salary to employee salary

-- Code:

SELECT emp.name AS Employee
FROM Employee emp
JOIN Employee manager ON  emp.managerId = manager.id
WHERE manager.salary < emp.salary
