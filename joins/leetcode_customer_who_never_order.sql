--Leetcode 183: Customers Who Never Order

-- DB: PostgreSQL

--Problem: find all customers who never order anything

--Approach:
--1) Join Customers and Orders table with LEFT JOIN (shows customers without oreders)
--2) Use WHERE to get customres we need

--Code:

SELECT c.name AS Customers
FROM Customers c LEFT JOIN Orders o
    ON c.id = o.customerId
WHERE o.customerId IS NULL
