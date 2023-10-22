--07. Tourists without Bookings
SELECT T.Id,[Name],PhoneNumber
 FROM Tourists AS T
LEFT JOIN Bookings AS B ON T.Id = B.TouristId 
WHERE TouristId  IS NULL
ORDER BY [Name]