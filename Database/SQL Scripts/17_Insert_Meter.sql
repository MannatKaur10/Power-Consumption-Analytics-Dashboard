USE PowerConsumptionDB;
GO

INSERT INTO Meters
(
    MeterNumber,
    CustomerID,
    InstallationDate,
    MeterStatus
)
SELECT
    CONCAT('MTR', RIGHT('00000' + CAST(CustomerID AS VARCHAR(5)),5)),
    CustomerID,
    ConnectionDate,
    'Active'
FROM Customers;
GO
SELECT COUNT(*) AS TotalMeters FROM METERS;