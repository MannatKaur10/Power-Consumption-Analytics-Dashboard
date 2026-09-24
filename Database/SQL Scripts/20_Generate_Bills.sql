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
    DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1) AS BillMonth,
    mr.UnitsConsumed,

    (mr.UnitsConsumed * t.PricePerUnit) + t.FixedCharge AS BillAmount,

    CASE 
        WHEN c.CustomerID % 5 = 0 THEN 'Paid'
        ELSE 'Unpaid'
    END AS PaymentStatus

FROM Customers c
INNER JOIN Meters m
    ON c.CustomerID = m.CustomerID
INNER JOIN MeterReadings mr
    ON m.MeterID = mr.MeterID
INNER JOIN Tariffs t
    ON c.CategoryID = t.CategoryID;
GO

SELECT COUNT(*) AS TotalBills FROM Bills;