--12. Search for Tourists from a Specific Country
CREATE PROC usp_SearchByCountry
 @country NVARCHAR(50)
 AS
 BEGIN
	 DECLARE @CountryId INT= 
	 (SELECT Id 
	   FROM Countries 
      WHERE [name] = @country)

	   SELECT [Name],PhoneNumber,Email,COUNT(B.TouristId) AS CountOfBookings
 FROM Tourists AS T
 JOIN Bookings AS B ON T.Id = B.TouristId 
 WHERE CountryId = @CountryId
 GROUP BY [Name],PhoneNumber ,Email  

 END