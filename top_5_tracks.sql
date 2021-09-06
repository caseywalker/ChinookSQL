SELECT TOP 5
	InvoiceLine.TrackId,
	Track.Name,
	COUNT(*) as [Total Purchases]
FROM InvoiceLine
JOIN Track 
	ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice 
	On Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY InvoiceLine.TrackId, Track.Name
ORDER BY [Total Purchases] DESC