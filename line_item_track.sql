SELECT il.*, t.Name AS TrackName
    FROM InvoiceLine AS il
    JOIN Track AS t
        ON il.TrackId = t.TrackId;