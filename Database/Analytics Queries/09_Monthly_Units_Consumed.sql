USE PowerConsumptionDB;
GO

SELECT
    DATENAME(MONTH, ReadingDate) AS MonthName,
    MONTH(ReadingDate) AS MonthNumber,
    SUM(UnitsConsumed) AS TotalUnitsConsumed
FROM MeterReadings
GROUP BY
    MONTH(ReadingDate),
    DATENAME(MONTH, ReadingDate)
ORDER BY
    MonthNumber;
GO