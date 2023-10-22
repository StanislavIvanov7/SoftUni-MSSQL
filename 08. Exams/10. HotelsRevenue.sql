--10. Hotels Revenue
SELECT 
    h.[Name] AS HotelName,
	SUM (DATEDIFF(DAY,b.ArrivalDate,b.DepartureDate) *r.Price ) as HotelRevenue
 FROM Bookings AS b
 JOIN Rooms AS r ON r.Id = b.RoomId 
 JOIN Hotels as h ON B.HotelId = h.Id 
 GROUP BY h.[Name] 
 ORDER BY HotelRevenue DESC