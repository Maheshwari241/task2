# task2

Interview Questions & Answers:
1. Difference between NULL and 0?

NULL means unknown or missing value, while 0 is a numeric value.

2. What is a default constraint?

It assigns a default value if none is provided during insertion.

3. How does IS NULL work?

IS NULL checks if a column contains a NULL value.
Example: SELECT * FROM Employees WHERE Email IS NULL;

4. How do you update multiple rows?

By using a WHERE clause that matches multiple rows:

UPDATE Employees SET Salary = Salary + 5000 WHERE Department = 'HR';

5. Can we insert partial values?

Yes, if the remaining columns allow NULL or have default values.

6. What happens if a NOT NULL field is left empty?

The insertion fails with an error.

7. How do you rollback a deletion?

If within a transaction:
BEGIN TRANSACTION;
DELETE FROM Employees WHERE EmployeeID = 2;
ROLLBACK; -- This will undo the delete
8. Can we insert values into specific columns only?

Yes.
INSERT INTO Employees (Name, Department) VALUES ('Eve', 'Marketing');

9. How to insert values using SELECT?

Example:
INSERT INTO Employees (Name, Department)
SELECT Name, Department FROM TempEmployees;

10. What is ON DELETE CASCADE?

A foreign key option that deletes child rows automatically when the parent row is deleted.
