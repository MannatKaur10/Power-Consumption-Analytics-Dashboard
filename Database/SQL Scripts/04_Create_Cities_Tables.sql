USE PowerConsumptionDB;
GO

CREATE TABLE Cities (
  CityID INT PRIMARY KEY IDENTITY (1,1),
  CityName VARCHAR(50) NOT NULL,
  StateID INT NOT NULL,

  CONSTRAINT FK_Cities_States
     FOREIGN KEY (StateID)
     REFERENCES States(StateID)
);
GO