SELECT 
	InvoiceLineId,
	InvoiceId,
	InvoiceLine.TrackId,
	InvoiceLine.UnitPrice,
	InvoiceLine.Quantity,
	Track.Name
FROM InvoiceLine
JOIN Track
	ON Track.TrackId = InvoiceLine.TrackId
Order By InvoiceId
