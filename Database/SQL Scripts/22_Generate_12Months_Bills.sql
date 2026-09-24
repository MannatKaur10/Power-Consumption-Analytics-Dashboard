USE PowerConsumptionDB;
GO

INSERT INTO Bills
(
    CustomerID,
    BillMonth,
    UnitsConsumed,
    BillAmount,
    PaymentStatus
)
SELECT
    c.CustomerID,
    mr.ReadingDate,
    mr.UnitsConsumed,
    (mr.UnitsConsumed * t.PricePerUnit) + t.FixedCharge,
    CASE
        WHEN ABS(CHECKSUM(NEWID())) % 100 < 85 THEN 'Paid'
        ELSE 'Unpaid'
    END
FROM Customers c
INNER JOIN Meters m
    ON c.CustomerID = m.CustomerID
INNER JOIN MeterReadings mr
    ON m.MeterID = mr.MeterID
INNER JOIN Tariffs t
    ON c.CategoryID = t.CategoryID;
GO
SELECT COUNT(*) AS TotalBill FROM Bills;
SELECT COUNT(*) AS States FROM States;
SELECT COUNT(*) AS Cities FROM Cities;
SELECT COUNT(*) AS Categories FROM CustomerCategories;
SELECT COUNT(*) AS Customers FROM Customers;
SELECT COUNT(*) AS Meters FROM Meters;
SELECT COUNT(*) AS MeterReadings FROM MeterReadings;
SELECT COUNT(*) AS Bills FROM Bills;