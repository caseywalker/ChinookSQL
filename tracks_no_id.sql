SELECT 
	Track.Name as [Track Name],
	Album.Title as [Album Title],
	Genre.Name as [Genre],
	MediaType.Name as [Media Type]
FROM Track
JOIN Album	
	ON Album.AlbumId = Track.AlbumId
JOIN MediaType 
	ON MediaType.MediaTypeId = Track.MediaTypeId
Join Genre
	ON Genre.GenreId = Track.GenreId