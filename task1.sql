-- Task 1

WITH RECURSIVE subordinates AS (
    SELECT 
        e.EmployeeID,
        e.EmployeeName,
        e.ManagerID,
        e.DepartmentID,
        e.RoleID
    FROM Employees e
    WHERE e.EmployeeID = 1

    UNION ALL

    SELECT 
        e.EmployeeID,
        e.EmployeeName,
        e.ManagerID,
        e.DepartmentID,
        e.RoleID
    FROM Employees e
    JOIN subordinates s ON e.ManagerID = s.EmployeeID
)

SELECT 
    s.EmployeeID,
    s.EmployeeName,
    s.ManagerID,
    d.DepartmentName,
    r.RoleName,
    STRING_AGG(DISTINCT p.ProjectName, ', ') AS Projects,
    STRING_AGG(DISTINCT t.TaskName, ', ') AS Tasks
FROM subordinates s
LEFT JOIN Departments d ON s.DepartmentID = d.DepartmentID
LEFT JOIN Roles r ON s.RoleID = r.RoleID
LEFT JOIN EmployeeProjects ep ON s.EmployeeID = ep.EmployeeID
LEFT JOIN Projects p ON ep.ProjectID = p.ProjectID
LEFT JOIN Tasks t ON s.EmployeeID = t.EmployeeID
GROUP BY s.EmployeeID, s.EmployeeName, s.ManagerID, d.DepartmentName, r.RoleName
ORDER BY s.EmployeeName;
