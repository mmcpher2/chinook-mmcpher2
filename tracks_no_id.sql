SELECT Track.Name as "Track Title", Album.Title as "Album Title", MediaType.Name as "Media Type", Genre.Name as "Genre", Track.Composer as "Artist Name", Track.Milliseconds, Track.Bytes, Track.UnitPrice
FROM Track
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
JOIN Genre ON Track.GenreId = Genre.GenreId;