SELECT TOP 1
	MediaType.Name as [Media Type],
	Count(*) as [Total Purchases]
FROM InvoiceLine
JOIN Track
	ON Track.TrackId = InvoiceLine.TrackId
JOIN MediaType
	ON MediaType.MediaTypeId = Track.MediaTypeId
GROUP BY MediaType.Name
ORDER BY [Total Purchases] DESC