-- LeetCode 586: Customer Placing the Largest Number of Orders

-- DB: PostgreSQL

-- Problem: Find the customer_number for the customer who has placed the largest number of orders

-- Approach:
-- 1) Group records by customer_number
-- 2) Order records by count(*)
-- 3) Limit selection to one value

-- Code:

SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC
LIMIT 1
