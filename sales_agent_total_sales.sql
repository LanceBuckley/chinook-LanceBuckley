SELECT DISTINCT(e.FirstName || ' ' || e.LastName) AS FullName, SUM(i.Total) AS TotalSales
    FROM Invoice AS i
    JOIN Customer AS c
        ON i.CustomerId = c.CustomerId
    JOIN Employee AS e
        ON c.SupportRepId = e.EmployeeId
    GROUP BY e.EmployeeId;