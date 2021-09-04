SELECT 
	InvoiceLineId,
	InvoiceId,
	InvoiceLine.TrackId,
	InvoiceLine.UnitPrice,
	InvoiceLine.Quantity,
	Track.Name as [Track Name],
	Artist.Name as [Artist Name]
FROM InvoiceLine
JOIN Track
	ON Track.TrackId = InvoiceLine.TrackId
JOIN Album 
	ON Album.AlbumId = Track.AlbumId
JOIN Artist
	ON Artist.ArtistId = Album.AlbumId
Order By InvoiceId
