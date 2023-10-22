--09. Tourists booked in Hotels
SELECT 
    H.[Name] AS HotelName,
    R.Price AS RoomPrice
FROM Tourists AS T
JOIN Bookings AS B ON T.Id = B.TouristId 
JOIN Hotels AS H ON B.HotelId = H.Id 
JOIN Rooms AS R ON B.RoomId = R.Id 
WHERE T.[Name] NOT LIKE '%EZ'
ORDER BY RoomPrice DESC