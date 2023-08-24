SELECT t.name AS Track, SUM(il.Quantity) AS Sales
    FROM Invoice AS i
    JOIN InvoiceLine AS il
        ON i.InvoiceId = il.InvoiceId
    JOIN Track AS t
        ON il.TrackId = t.TrackId
    GROUP BY il.TrackId
    ORDER BY Sales DESC
    LIMIT 5;