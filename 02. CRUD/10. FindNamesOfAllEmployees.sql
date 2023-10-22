--10. Find Names of All Employees
SELECT CONCAT_WS(' ',[FirstName],[MiddleName],[LastName])
AS [FullName]
FROM Employees
WHERE [Salary] IN (25000, 14000, 12500, 23600)