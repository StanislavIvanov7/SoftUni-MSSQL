--01. Employee Address
SELECT TOP (5) [EmployeeID],[JobTitle] ,e.[AddressID] ,a.[AddressText] 
FROM [Employees] AS e
JOIN [Addresses] AS a ON a.[AddressID] = e.[AddressID]
ORDER BY [AddressID] 
