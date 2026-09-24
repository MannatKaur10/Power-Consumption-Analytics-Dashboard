USE PowerConsumptionDB;
GO

DELETE FROM Bills;
DELETE FROM MeterReadings;
GO

DBCC CHECKIDENT ('Bills', RESEED, 0);
DBCC CHECKIDENT ('MeterReadings', RESEED, 0);
GO
USE PowerConsumptionDB;
GO

DECLARE @MeterID INT = 1;
DECLARE @Month INT;
DECLARE @PrevReading DECIMAL(10,2);

WHILE @MeterID <= 100
BEGIN
    SET @PrevReading = 1000 + (@MeterID * 25);
    SET @Month = 1;

    WHILE @Month <= 12
    BEGIN
        DECLARE @Units DECIMAL(10,2);

        SET @Units = 150 + (ABS(CHECKSUM(NEWID())) % 251);

        INSERT INTO MeterReadings
        (
            MeterID,
            ReadingDate,
            PreviousReading,
            CurrentReading,
            UnitsConsumed,
            PeakDemand,
            PowerFactor
        )
        VALUES
        (
            @MeterID,
            DATEFROMPARTS(2025, @Month, 1),
            @PrevReading,
            @PrevReading + @Units,
            @Units,
            2 + (ABS(CHECKSUM(NEWID())) % 9),
            CAST(0.85 + ((ABS(CHECKSUM(NEWID())) % 15) / 100.0) AS DECIMAL(4,2))
        );

        SET @PrevReading = @PrevReading + @Units;
        SET @Month = @Month + 1;
    END

    SET @MeterID = @MeterID + 1;
END;
GO
SELECT COUNT(*) AS TotalMeterReadings FROM MeterReadings;