--08. First 10 Bookings
SELECT TOP (10) 
   H.[Name] AS HotelName,
   D.[Name] AS DestinationName,
   C.[Name] AS CountryName
FROM Bookings AS B
JOIN Hotels AS H ON B.HotelId = H.Id 
JOIN Destinations AS D ON H.DestinationId = D.Id 
JOIN Countries AS C ON D.CountryId = C.Id 
WHERE ArrivalDate < '2023-12-31' AND H.Id %2 !=0
ORDER BY C.[Name],ArrivalDate 