--06. Deposits Sum for Ollivander Family
SELECT [DepositGroup], [TotalSum] 
FROM
	(SELECT [DepositGroup] ,SUM([DepositAmount]) AS [TotalSum],[MagicWandCreator]
	    FROM [WizzardDeposits]
	    GROUP BY [DepositGroup],[MagicWandCreator]  
	    HAVING [MagicWandCreator] = 'Ollivander family') AS [SubQuery]