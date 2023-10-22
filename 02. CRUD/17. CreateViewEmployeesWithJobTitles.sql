--17. Create View Employees with Job Titles
CREATE VIEW V_EmployeeNameJobTitle
AS 
SELECT CONCAT([FirstName],' ',[MiddleName],' ',[LastName]) AS [Full Name], [JobTitle] as [Job Title]
FROM Employees 