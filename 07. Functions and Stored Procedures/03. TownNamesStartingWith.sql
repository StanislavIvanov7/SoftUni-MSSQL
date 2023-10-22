--03. Town Names Starting With
CREATE PROCEDURE usp_GetTownsStartingWith (@FirstLetterOfTown VARCHAR(50))
AS
BEGIN
SELECT [NAME] 
FROM [Towns] AS [TownName]
WHERE SUBSTRING ([Name],1,LEN(@FirstLetterOfTown)) = @FirstLetterOfTown
END
