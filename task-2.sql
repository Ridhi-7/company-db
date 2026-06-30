CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT,
    Department VARCHAR(30) DEFAULT 'General',
    Salary DECIMAL(10,2),
    Email VARCHAR(100)
);

INSERT INTO Employee VALUES
(101,'Rahul',24,'IT',50000,'rahul@gmail.com'),
(102,'Priya',22,'HR',45000,NULL);

INSERT INTO Employee (EmpID, Name, Age, Salary)
VALUES (103,'Aman',25,40000);

UPDATE Employee
SET Salary = Salary + 5000
WHERE Department = 'IT';

DELETE FROM Employee
WHERE EmpID = 102;

SELECT * FROM Employee WHERE Email IS NULL;

CREATE TABLE Employee_Backup LIKE Employee;

INSERT INTO Employee_Backup
SELECT * FROM Employee;

SELECT * FROM Employee_Backup;
