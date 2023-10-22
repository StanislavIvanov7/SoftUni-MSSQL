--13. Mix of Peak and River Names
SELECT [PeakName] ,[RiverName], LOWER(LEFT(p.PeakName,LEN(p.PeakName) -1)  + RiverName) AS Mix
FROM Peaks AS p ,Rivers AS r 
WHERE RIGHT(p.PeakName ,1) = LEFT(r.RiverName,1)
ORDER BY [Mix]