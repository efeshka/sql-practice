-- LeetCode 1965: Employees with missing information
-- DB: PostgreSQL
-- Task: 
/* Write a solution to report the IDs of all the employees with missing information. The information of an employee is missing if:

    The employee's name is missing, or
    The employee's salary is missing.

Return the result table ordered by employee_id in ascending order.

The result format is in the following example. */
-- Code:



SELECT COALESCE(e.employee_id, s.employee_id) as employee_id 
FROM Employees e FULL OUTER JOIN Salaries s
    ON e.employee_id = s.employee_id
WHERE e.employee_id is NULL OR s.employee_id is NULL 
