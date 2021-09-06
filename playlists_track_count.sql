SELECT Name as [Playlist Name], count(*) as [Total Tracks]
FROM PlaylistTrack
JOIN Playlist
	ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY Name
