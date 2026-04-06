-- Task 11

WITH RECURSIVE subordinates AS (
    SELECT * FROM Employees WHERE EmployeeID = 1
    UNION ALL
    SELECT e.* FROM Employees e
    JOIN subordinates s ON e.ManagerID = s.EmployeeID
)
SELECT * FROM subordinates;
