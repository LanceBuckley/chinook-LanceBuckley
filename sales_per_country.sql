SELECT BillingCountry, SUM(total) AS TotalSales
    FROM Invoice
    GROUP BY BillingCountry;