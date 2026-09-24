USE PowerConsumptionDB;
GO

SELECT
    ci.CityName,
    COUNT(c.CustomerID) AS TotalCustomers
FROM Customers c
INNER JOIN Cities ci
    ON c.CityID = ci.CityID
GROUP BY ci.CityName
ORDER BY TotalCustomers DESC;
GO