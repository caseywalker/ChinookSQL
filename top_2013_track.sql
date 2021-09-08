SELECT TOP 1
	Track.Name,
	COUNT(*) as [Total Purchases]
FROM InvoiceLine
JOIN Track 
	ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice 
	On Invoice.InvoiceId = InvoiceLine.InvoiceId
WHERE YEAR(Invoice.InvoiceDate) = '2013'
GROUP BY Track.Name
ORDER BY [Total Purchases] DESC