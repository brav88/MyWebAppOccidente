CREATE DATABASE PriceAutoSales;
USE PriceAutoSales;

CREATE TABLE Cars (
     Id INT NOT NULL AUTO_INCREMENT,
	 Brand VARCHAR(50),
	 Model VARCHAR(50),
	 Type INT, 
	 FuelType INT,
	 Transmision INT,
	 Year INT,
	 Created datetime,
     PRIMARY KEY(Id)
);

INSERT INTO Cars (Brand, Model, Type, FuelType, Transmision, Year, Created)
VALUES ("Honda", "Civic", 1, 1, 1, 2022, LOCALTIME());
INSERT INTO Cars (Brand, Model, Type, FuelType, Transmision, Year, Created)
VALUES ("Toyota", "Land Cruiser", 2, 2, 3, 2024, LOCALTIME());

SELECT * FROM Cars;

CREATE TABLE Type (
     Id INT NOT NULL AUTO_INCREMENT,
	 Description VARCHAR(50),	
     PRIMARY KEY(Id)
);

INSERT INTO Type (Description)
VALUES ("Sedan");
INSERT INTO Type (Description)
VALUES ("Station Wagon");
INSERT INTO Type (Description)
VALUES ("Hathback");
INSERT INTO Type (Description)
VALUES ("Pick Up 4x4");
INSERT INTO Type (Description)
VALUES ("SUV");

SELECT * FROM Type;

CREATE TABLE FuelType (
     Id INT NOT NULL AUTO_INCREMENT,
	 Description VARCHAR(50),	
     PRIMARY KEY(Id)
);

INSERT INTO FuelType (Description)
VALUES ("Gasoline");
INSERT INTO FuelType (Description)
VALUES ("Diesel");
INSERT INTO FuelType (Description)
VALUES ("Hibrid");
INSERT INTO FuelType (Description)
VALUES ("Electric");

SELECT * FROM FuelType;

CREATE TABLE Transmission (
     Id INT NOT NULL AUTO_INCREMENT,
	 Description VARCHAR(50),	
     PRIMARY KEY(Id)
);

INSERT INTO Transmission (Description)
VALUES ("Manual");
INSERT INTO Transmission (Description)
VALUES ("Automatic/Dual");
INSERT INTO Transmission (Description)
VALUES ("Shiftronic");

SELECT * FROM Transmission;
