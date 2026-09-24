USE PowerConsumptionDB;
GO

SELECT *
FROM Customers
WHERE
    FirstName IS NULL
    OR LastName IS NULL
    OR CityID IS NULL
    OR CategoryID IS NULL
    OR ConnectionStatus IS NULL;
GO