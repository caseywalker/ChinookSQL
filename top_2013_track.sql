SELECT TOP 1
	InvoiceLine.TrackId,
	Track.Name,
	COUNT(*) as [Total Purchases]
FROM InvoiceLine
JOIN Track 
	ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice 
	On Invoice.InvoiceId = InvoiceLine.InvoiceId
WHERE YEAR(Invoice.InvoiceDate) = '2013'
GROUP BY InvoiceLine.TrackId, Track.Name
ORDER BY [Total Purchases] DESC