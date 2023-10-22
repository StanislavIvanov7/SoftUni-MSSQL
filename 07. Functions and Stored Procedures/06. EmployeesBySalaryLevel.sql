--06. Employees by Salary Level
CREATE PROCEDURE usp_EmployeesBySalaryLevel(@levelOfSalary VARCHAR(7))
AS
SELECT FirstName
      ,LastName
FROM Employees
WHERE dbo.ufn_GetSalaryLevel(Salary) = @levelOfSalary
