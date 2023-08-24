SELECT ar.name AS Artist, SUM(il.Quantity) AS Sales
    FROM Invoice AS i
    JOIN InvoiceLine AS il
        ON i.InvoiceId = il.InvoiceId
    JOIN Track AS t
        ON il.TrackId = t.TrackId
    JOIN Album AS a
        ON t.AlbumId = a.AlbumID
    JOIN Artist AS ar
        ON a.ArtistId = ar.ArtistId
    GROUP BY ar.ArtistId
    ORDER BY Sales DESC
    LIMIT 3;