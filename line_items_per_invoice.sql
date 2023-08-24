SELECT COUNT(*) AS LineItems, InvoiceId
FROM InvoiceLine
GROUP BY InvoiceId;