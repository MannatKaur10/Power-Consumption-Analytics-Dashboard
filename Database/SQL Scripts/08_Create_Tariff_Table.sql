USE PowerConsumptionDB;
GO

CREATE TABLE Tariffs
(
    TariffID INT PRIMARY KEY IDENTITY(1,1),
    CategoryID INT NOT NULL,
    PricePerUnit DECIMAL(10,2) NOT NULL,
    FixedCharge DECIMAL(10,2) NOT NULL,

    CONSTRAINT FK_Tariffs_Categories
        FOREIGN KEY(CategoryID)
        REFERENCES CustomerCategories(CategoryID)
);
GO