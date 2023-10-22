--07. Deposits Filter
SELECT [DepositGroup],
       [TotalSum] 
FROM
	(SELECT 
	       [DepositGroup] ,
	       SUM([DepositAmount]) AS [TotalSum],
	       [MagicWandCreator]
	 FROM [WizzardDeposits]
	    GROUP BY [DepositGroup],[MagicWandCreator]  
	    HAVING [MagicWandCreator] = 'Ollivander family') AS [SubQuery]
WHERE [TotalSum] < 150000
ORDER BY [TotalSum] DESC