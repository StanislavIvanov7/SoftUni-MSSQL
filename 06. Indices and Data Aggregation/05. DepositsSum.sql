--05. Deposits Sum
SELECT [DepositGroup] ,SUM([DepositAmount])
FROM [WizzardDeposits]
GROUP BY [DepositGroup] 