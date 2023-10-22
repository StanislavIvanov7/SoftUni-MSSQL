--05. Bookings by Price of Room and Arrival Date
SELECT FORMAT(ArrivalDate,'yyyy-MM-dd') AS ArrivalDate,AdultsCount,ChildrenCount
FROM Bookings as b
JOIN Rooms AS R ON R.Id = b.RoomId 
ORDER BY r.Price desc,ArrivalDate 