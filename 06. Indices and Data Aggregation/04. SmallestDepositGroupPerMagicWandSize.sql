--04. Smallest Deposit Group per Magic Wand Size
SELECT TOP(2) [DepositGroup]
FROM [WizzardDeposits] 
GROUP BY [DepositGroup] 
ORDER BY AVG(([MagicWandSize]))