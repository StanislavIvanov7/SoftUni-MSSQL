--08. Create View Employees Hired After 2000 Year
CREATE VIEW V_EmployeesHiredAfter2000
AS
SELECT [FirstName],[LastName]
FROM Employees 
WHERE [HireDate] > '2000-12-31'