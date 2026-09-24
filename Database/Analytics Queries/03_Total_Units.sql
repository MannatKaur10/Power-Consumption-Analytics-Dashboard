USE PowerConsumptionDB;
GO

SELECT
    SUM(UnitsConsumed) AS TotalUnitsConsumed
FROM MeterReadings;
GO