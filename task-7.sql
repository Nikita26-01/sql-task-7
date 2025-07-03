-- Create table: Employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    JoinDate DATE
);

-- Insert sample data
INSERT INTO Employees VALUES
(1, 'sameer', 'Luthra', 'IT', 60000, '2021-06-01'),
(2, 'Rahul', 'Sharma', 'HR', 50000, '2020-04-15'),
(3, 'Ali', 'pandey', 'Finance', 65000, '2019-03-10'),
(4, 'Hari', 'Varma', 'IT', 70000, '2018-12-20');

-- View 1: IT Department Employees
CREATE VIEW IT_Employees AS
SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
WHERE Department = 'IT';

-- View 2: High Salary Employees
CREATE VIEW High_Salary_Employees AS
SELECT *
FROM Employees
WHERE Salary > 60000;

-- View 3: Employee Summary with Calculated Fields
CREATE VIEW Employee_Summary AS
SELECT
    EmployeeID,
    CONCAT(FirstName, ' ', LastName) AS FullName,  -- Full name as a calculated string field
    Department,
    Salary,
    ROUND(DATEDIFF(CURDATE(), JoinDate) / 365, 2) AS Years_Worked  -- Years worked as a calculated numeric field
FROM Employees;

-- View Usage Examples
SELECT * FROM IT_Employees;
SELECT * FROM High_Salary_Employees;
SELECT * FROM Employee_Summary;

-- Drop a view (example)
DROP VIEW IF EXISTS High_Salary_Employees;
