Provide a query that shows the most purchased track(s) of 2013.

SELECT t.name AS Track, SUM(il.Quantity) AS Sales
    FROM Invoice AS i
    JOIN InvoiceLine AS il
        ON i.InvoiceId = il.InvoiceId
    JOIN Track AS t
        ON il.TrackId = t.TrackId
    WHERE (i.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31')
    GROUP BY il.TrackId
