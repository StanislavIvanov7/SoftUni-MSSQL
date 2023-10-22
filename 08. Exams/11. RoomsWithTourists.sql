--11. Rooms with Tourists
 CREATE FUNCTION udf_RoomsWithTourists(@name VARCHAR(40)) 
 RETURNS INT
 AS
 BEGIN

  DECLARE @Count INT=
  (  
	  SELECT  SUM (AdultsCount + ChildrenCount)
      FROM Tourists AS T
      JOIN Bookings AS B ON B.TouristId = T.Id 
      JOIN Rooms AS R ON R.Id = B.RoomId 
      WHERE R.[Type] = @name
	
  )

	RETURN @Count
 END