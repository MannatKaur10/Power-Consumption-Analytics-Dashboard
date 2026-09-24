USE PowerConsumptionDB;
GO

CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    DateOfBirth DATE NOT NULL,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    CityID INT NOT NULL,
    CategoryID INT NOT NULL,
    ConnectionDate DATE NOT NULL,
    ConnectionStatus VARCHAR(20) NOT NULL,

    CONSTRAINT FK_Customers_Cities
        FOREIGN KEY (CityID)
        REFERENCES Cities(CityID),

    CONSTRAINT FK_Customers_Categories
        FOREIGN KEY (CategoryID)
        REFERENCES CustomerCategories(CategoryID)
);
GO