USE PowerConsumptionDB;
GO

SELECT
    PaymentStatus,
    COUNT(*) AS TotalBills
FROM Bills
GROUP BY PaymentStatus;
GO