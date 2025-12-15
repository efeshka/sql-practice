-- LeetCode: Combine Two Tables
-- Using LEFT JOIN to return all persons

SELECT p.firstName, p.lastName, a.city, a.state
FROM Person p
LEFT JOIN Address a
    ON p.personId = a.personId;
