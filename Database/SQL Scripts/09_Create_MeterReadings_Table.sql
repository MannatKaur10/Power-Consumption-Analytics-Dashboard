USE PowerConsumptionDB;
GO

CREATE TABLE MeterReadings
(
    ReadingID BIGINT PRIMARY KEY IDENTITY(1,1),
    MeterID INT NOT NULL,
    ReadingDate DATE NOT NULL,
    PreviousReading DECIMAL(10,2) NOT NULL,
    CurrentReading DECIMAL(10,2) NOT NULL,
    UnitsConsumed DECIMAL(10,2) NOT NULL,
    PeakDemand DECIMAL(10,2),
    PowerFactor DECIMAL(4,2),

    CONSTRAINT FK_MeterReadings_Meters
        FOREIGN KEY(MeterID)
        REFERENCES Meters(MeterID)
);
GO