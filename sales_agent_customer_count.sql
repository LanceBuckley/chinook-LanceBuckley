SELECT
(e.FirstName || ' ' || e.LastName) AS FullName, SUM(c.SupportRepId) AS Customers
    FROM Customer AS c
    JOIN Employee AS e
        ON c.SupportRepId = e.EmployeeId
    GROUP BY FullName;