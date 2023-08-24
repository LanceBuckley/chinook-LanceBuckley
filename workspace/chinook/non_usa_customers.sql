SELECT (FirstName || ' ' || LastName) AS FullName, CustomerId, Country
    FROM Customer
    WHERE Country IS NOT 'USA'