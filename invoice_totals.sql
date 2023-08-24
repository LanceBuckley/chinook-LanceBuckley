SELECT (e.FirstName || ' ' || e.LastName) AS Agent, c.Country, (c.FirstName || ' ' || c.LastName) AS Customer, i.Total
    FROM Invoice AS i
        JOIN Customer AS c ON i.CustomerId = c.CustomerId
        JOIN Employee AS e ON c.SupportRepId = e.EmployeeId;