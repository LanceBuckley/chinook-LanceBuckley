SELECT MediaType, MAX(Sales) AS Sales
    FROM
        (SELECT m.name AS MediaType, SUM(il.Quantity) AS Sales
            FROM Invoice AS i
            JOIN InvoiceLine AS il
                ON i.InvoiceId = il.InvoiceId
            JOIN Track AS t
                ON il.TrackId = t.TrackId
            JOIN MediaType AS m
                ON t.MediaTypeId = m.MediaTypeID
            GROUP BY m.MediaTypeId
            ORDER BY Sales DESC);