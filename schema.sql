-- Database schema

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    ManagerID INT,
    DepartmentID INT,
    RoleID INT
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Roles (
    RoleID INT PRIMARY KEY,
    RoleName VARCHAR(100)
);

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100)
);

CREATE TABLE Tasks (
    TaskID INT PRIMARY KEY,
    TaskName VARCHAR(255),
    EmployeeID INT,
    ProjectID INT
);

CREATE TABLE EmployeeProjects (
    EmployeeID INT,
    ProjectID INT
);
