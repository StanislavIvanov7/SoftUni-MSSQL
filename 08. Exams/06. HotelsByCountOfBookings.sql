--06. Hotels by Count of Bookings
SELECT H.Id,H.[Name] 
FROM Hotels AS H
JOIN HotelsRooms AS HR ON H.Id = HR.HotelId 
JOIN Rooms AS R ON HR.RoomId = R.Id 
LEFT JOIN  Bookings AS B ON B.HotelId = H.Id 
WHERE R.[Type] ='VIP Apartment'
GROUP BY H.[Name],H.Id 
ORDER BY COUNT(*) DESC