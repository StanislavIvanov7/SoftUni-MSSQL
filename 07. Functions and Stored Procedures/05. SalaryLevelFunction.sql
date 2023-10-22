--05. Salary Level Function
CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4)) 
RETURNS VARCHAR(10) 
AS
BEGIN
DECLARE @SalaryLevel VARCHAR(10) 
IF(@salary < 30000)
SET @SalaryLevel = 'Low'
ELSE IF (@salary >=30000 AND @salary <=50000)
SET @SalaryLevel = 'Average'
ELSE IF(@salary > 50000)
SET @SalaryLevel = 'High'

RETURN @SalaryLevel
END
