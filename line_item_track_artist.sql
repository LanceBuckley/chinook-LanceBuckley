SELECT il.*, t.Name AS TrackName, ar.Name AS Artist
    FROM InvoiceLine AS il
    JOIN Track AS t
        ON il.TrackId = t.TrackId
    JOIN Album AS a
        ON t.AlbumId = a.AlbumId
    JOIN Artist AS ar 
        ON a.ArtistId = ar.ArtistId;