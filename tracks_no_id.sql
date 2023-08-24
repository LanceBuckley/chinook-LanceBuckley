SELECT t.Name AS TrackName, a.Title AS AlbumName, m.Name AS MediaType, g.Name AS Genre
    FROM Track AS t
    JOIN Album AS a
        ON t.AlbumId = a.AlbumId
    JOIN MediaType AS m
        ON t.MediaTypeId = m.MediaTypeId
    JOIN Genre AS g
        ON t.GenreId = g.GenreId;