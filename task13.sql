-- Task 13

WITH RECURSIVE hierarchy AS (
    SELECT EmployeeID, EmployeeID AS ManagerID FROM Employees
    UNION ALL
    SELECT e.EmployeeID, h.ManagerID
    FROM Employees e
    JOIN hierarchy h ON e.ManagerID = h.EmployeeID
)
SELECT * FROM hierarchy;
