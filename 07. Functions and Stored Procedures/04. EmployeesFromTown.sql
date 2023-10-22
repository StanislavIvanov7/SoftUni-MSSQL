--04. Employees from Town
CREATE PROCEDURE usp_GetEmployeesFromTown(@TownName VARCHAR(70))
AS
BEGIN
SELECT[FirstName],[LastName] 
FROM [Employees]  AS [e]
JOIN [Addresses] AS [a] ON [e].[AddressID] = [a].[AddressID]
JOIN [Towns] AS [t] ON [t].[TownID] = [a].[TownID] 
WHERE [t].[Name] = @TownName 
END