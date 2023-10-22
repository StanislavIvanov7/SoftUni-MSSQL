--05. Employees Without Projects
SELECT TOP(3) e.[EmployeeID],[FirstName] 
FROM [Employees] AS e
LEFT JOIN [EmployeesProjects] AS ep ON ep.[EmployeeID] =e.[EmployeeID] 
WHERE [ProjectID] IS NULL