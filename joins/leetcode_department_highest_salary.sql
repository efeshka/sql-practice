--Leetcode 184: Department Highest Salary

-DB: PostgreSQL

--Problem: Find employees with highest salary in each of departments

--Approach:
--1) Join Employee and Department tables on Department id's 
--2) Create subquery to find max salaries in each department
--3) Get employees with highest salaries

--Code:

SELECT
    dep.name AS Department,
    emp.name AS Employee,
    emp.salary AS Salary
FROM Employee emp JOIN Department dep
    ON emp.departmentId = dep.id

WHERE (dep.name, emp.salary) IN (
    SELECT d.name, MAX(e.salary)
FROM Employee e JOIN Department d
    ON e.departmentId = d.id
GROUP BY d.name)
