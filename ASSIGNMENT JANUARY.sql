CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(255)
);
Insert into Departments (DepartmentID, DepartmentName) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing'),
(5, 'Operations');
select*from departments;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    DepartmentID INT,
    Salary DECIMAL,
    HireDate DATETIME,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Salary, HireDate)VALUES
(1, 'Fizza', 'Bashir', 1, 60000, '2024-03-15'),
(2, 'Alishba', 'Hashmi', 2, 55000, '2024-12-01'),
(3, 'Rabiya', 'Khan', 1, 70000, '2024-02-01'),
(4, 'Mira', 'Shahveer', 3, 48000, '2023-05-20'),
(5, 'Shiza', 'Murat', 2, 62000, '2023-04-08'),
(6, 'Hayat', 'Murat', 4, 42000, '2022-11-22'),
(7, 'Epic', 'Kareem', 1, 75000, '2013-01-05'),
(8, 'Raha', 'Anderson', 3, 51000, '2022-10-15'),
(9, 'Aila', 'Kiran', 2, 58000, '2023-03-28'),
(10, 'Hemayal', 'Malik', 4, 39000, '2023-06-12'); 

select*from employees;

Update Employees SET Salary = Salary * 1.1 WHERE DepartmentID = 1;

Delete from Employees WHERE Salary < 40000;

Select E.FirstName, E.LastName, D.DepartmentName, E.Salary From Employees E
INNER JOIN Departments D ON E.DepartmentID = D.DepartmentID;

Select D.DepartmentName, COUNT(E.EmployeeID) AS NumberOfEmployees From Departments D
Left Join Employees E ON D.DepartmentID = E.DepartmentID GROUP BY D.DepartmentName;

Select E.FirstName, E.LastName, E.HireDate From Employees E
INNER JOIN Departments D ON E.DepartmentID = D.DepartmentID
Where E.HireDate > '2023-01-01';


