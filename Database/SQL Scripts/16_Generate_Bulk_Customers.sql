USE PowerConsumptionDB;
GO

DECLARE @i INT = 1;

WHILE @i <= 95
BEGIN
    INSERT INTO Customers
    (
        FirstName,
        LastName,
        Gender,
        DateOfBirth,
        PhoneNumber,
        Email,
        CityID,
        CategoryID,
        ConnectionDate,
        ConnectionStatus
    )
    VALUES
    (
        CONCAT('User', @i),
        CONCAT('Test', @i),
        CASE WHEN @i % 2 = 0 THEN 'Male' ELSE 'Female' END,
        DATEADD(YEAR, -20 - (@i % 25), GETDATE()),
        CONCAT('99999', RIGHT('00000' + CAST(@i AS VARCHAR), 5)),
        CONCAT('user', @i, '@mail.com'),
        (@i % 15) + 1,
        (@i % 4) + 1,
        DATEADD(DAY, -@i, GETDATE()),
        CASE WHEN @i % 10 = 0 THEN 'Inactive' ELSE 'Active' END
    );

    SET @i = @i + 1;
END;
GO

SELECT COUNT(*) AS TotalCustomers FROM Customers;