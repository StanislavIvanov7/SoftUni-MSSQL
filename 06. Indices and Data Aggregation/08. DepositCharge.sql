--08. Deposit Charge
SELECT 
       [DepositGroup] ,
       [MagicWandCreator],
       Min([depositCharge]) AS [MinDepositCharge]
FROM WizzardDeposits 
	GROUP BY [DepositGroup],MagicWandCreator
	ORDER BY MagicWandCreator ,DepositGroup