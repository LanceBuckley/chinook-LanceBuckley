SELECT (c.FirstName || ' ' || c.LastName) AS FullName, InvoiceId, InvoiceDate, BillingCountry
    FROM Invoice AS i
        JOIN Customer AS c
        ON i.CustomerId = c.CustomerId
    WHERE c.Country = 'Brazil';

SELECT *
    FROM Customer
    WHERE Country = 'Brazil';