--03. Sales Employees
SELECT [EmployeeID], [FirstName], [LastName],d.[Name]
FROM [Employees] AS e
JOIN [Departments] AS d ON  d.DepartmentID = e.DepartmentID
WHERE d.Name = 'Sales'
ORDER BY [EmployeeID] 