USE PowerConsumptionDB;
GO

CREATE TABLE Bills
(
    BillID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT NOT NULL,
    BillMonth DATE NOT NULL,
    UnitsConsumed DECIMAL(10,2) NOT NULL,
    BillAmount DECIMAL(10,2) NOT NULL,
    PaymentStatus VARCHAR(20) NOT NULL,

    CONSTRAINT FK_Bills_Customers
        FOREIGN KEY(CustomerID)
        REFERENCES Customers(CustomerID)
);
GO