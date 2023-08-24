SELECT i.InvoiceId, COUNT(il.InvoiceLineId) AS LineItems
    FROM Invoice AS i
    JOIN InvoiceLine AS il
        ON i.InvoiceId = il.InvoiceId
    GROUP BY i.InvoiceId;
