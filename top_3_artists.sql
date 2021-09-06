SELECT TOP 3
	Artist.Name as [Artist],
	Count(*) as [Total Sales]
FROM InvoiceLine
JOIN Track 
	ON Track.TrackId = InvoiceLine.TrackId
JOIN Album
	ON Album.AlbumId = Track.AlbumId
JOIN Artist
	ON Artist.ArtistId = Album.ArtistId
GROUP BY Artist.Name
ORDER BY [Total Sales] DESC