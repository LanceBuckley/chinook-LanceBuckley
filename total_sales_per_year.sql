SELECT
    SUM(CASE WHEN InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31' THEN Total END) AS Total2009,
    SUM(CASE WHEN InvoiceDate BETWEEN '2011-01-01' AND '2011-12-31' THEN Total END) AS Total2011
FROM Invoice;
