--12. Countries Holding 'A' 3 or More Times
SELECT [CountryName],[IsoCode]
FROM Countries
WHERE [CountryName] LIKE '%A%A%A%'
ORDER BY [IsoCode]