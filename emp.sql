USE mahi;
CREATE TABLE Emp (
    EmployeeID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Department TEXT,
    Salary REAL DEFAULT 30000,
    Email TEXT
);
select * from Emp;



-- INSERT statements (including null/default handling)
INSERT INTO Emp (EmployeeID, Name, Department, Salary, Email)
VALUES (6, 'priya', 'Sales', 10000, 'priya@example.com');

INSERT INTO Emp (EmployeeID, Name, Department, Email)
VALUES (2, 'Bob', 'Finance', 'bob@example.com'); -- Salary will use default

INSERT INTO Emp (EmployeeID, Name, Department, Salary)
VALUES (3, 'Charlie', 'IT', NULL); -- Email is NULL

-- INSERT partial values
INSERT INTO Emp (EmployeeID, Name)
VALUES (4, 'Diana'); -- Department, Salary (default), Email are NULL/default

-- UPDATE a specific row
UPDATE Employees SET Salary = 45000 WHERE Name = 'Bob';


-- UPDATE multiple rows
UPDATE Emp SET Department = 'IT Support' WHERE Department = 'IT';

-- DELETE a specific row
DELETE FROM Employees WHERE EmployeeID = 1;
