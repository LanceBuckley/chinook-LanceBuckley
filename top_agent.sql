SELECT DISTINCT FullName, MAX(TotalSalesPerAgent) AS TotalSales
    FROM (
        SELECT DISTINCT(e.FirstName || ' ' || e.LastName) AS FullName, SUM(i.Total) AS TotalSalesPerAgent
            FROM Invoice AS i
            JOIN Customer AS c
                ON i.CustomerId = c.CustomerId
            JOIN Employee AS e
                ON c.SupportRepId = e.EmployeeId
            GROUP BY e.EmployeeId
    );