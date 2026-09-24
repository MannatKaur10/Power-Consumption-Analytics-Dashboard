USE PowerConsumptionDB;
GO

CREATE TABLE Meters
(
    MeterID INT PRIMARY KEY IDENTITY(1,1),
    MeterNumber VARCHAR(30) NOT NULL UNIQUE,
    CustomerID INT NOT NULL UNIQUE,
    InstallationDate DATE NOT NULL,
    MeterStatus VARCHAR(20) NOT NULL,

    CONSTRAINT FK_Meters_Customers
        FOREIGN KEY(CustomerID)
        REFERENCES Customers(CustomerID)
);
GO