SELECT TOP 5
	Track.Name,
	SUM(InvoiceLine.Quantity) as [Total Purchases]
FROM InvoiceLine
JOIN Track 
	ON Track.TrackId = InvoiceLine.TrackId
WHERE (
GROUP BY Track.Name
ORDER BY [Total Purchases] DESC