SELECT BillingCountry, MAX(TotalSalesPerCountry) AS TotalSales
    FROM(
SELECT BillingCountry, SUM(total) AS TotalSalesPerCountry
    FROM Invoice
    GROUP BY BillingCountry
    );