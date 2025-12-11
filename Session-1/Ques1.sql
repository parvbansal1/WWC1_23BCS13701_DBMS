-- Parv Bansal (23BCS13701)



CREATE TABLE Employee (
    EmpID SERIAL PRIMARY KEY,
    EmpName VARCHAR(100),
    Department VARCHAR(50),
    Salary NUMERIC(10,2)
);


INSERT INTO Employee (EmpName, Department, Salary) VALUES
('Amit Singh', 'HR', 45000),
('Priya Sharma', 'Finance', 60000),
('Rohan Das', 'IT', 75000),
('Neha Agarwal', 'IT', 72000);

CREATE VIEW Employee_View AS
SELECT EmpID, EmpName, Department
FROM Employee;


CREATE ROLE Analyst;

GRANT SELECT ON Employee_View TO Analyst;
