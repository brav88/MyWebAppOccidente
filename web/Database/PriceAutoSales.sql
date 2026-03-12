CREATE DATABASE PriceAutoSalesOccidente;
USE PriceAutoSalesOccidente;

/*DROP TABLE Cars;*/

CREATE TABLE Cars (
    carId int NOT NULL AUTO_INCREMENT,
    brand varchar(50),
    model varchar(100),
    type int,
    fuelType int,
    transmission int,
    cubicCapacity varchar(50),
    userId INT,
    created datetime,
    PRIMARY KEY (carId)
);

INSERT INTO Cars (brand, model, type, fuelType, transmission, cubicCapacity, userId, created) 
VALUES ('Toyota', 'Land Cruiser', 7, 2, 2, '4000', 2, LOCALTIME());
INSERT INTO Cars (brand, model, type, fuelType, transmission, cubicCapacity, created)
VALUES ('Honda', 'Civic', 1, 1, 1, '1700', LOCALTIME());
INSERT INTO Cars (brand, model, type, fuelType, transmission, cubicCapacity, created)
VALUES ('Suzuki', 'Vitara', 1, 1, 1, '1900', LOCALTIME());
INSERT INTO Cars (brand, model, type, fuelType, transmission, cubicCapacity, created)
VALUES ('Honda', 'Accord', null, 1, 1, '1900', LOCALTIME());

UPDATE Cars SET brand='Toyota', model = 'Land Cruiser', cubicCapacity='4000'  WHERE carId = 1;
DELETE FROM Cars WHERE carId = 5;
SELECT * FROM Cars WHERE carId = 5;

CREATE TABLE Transmission (
    id int NOT NULL AUTO_INCREMENT,
    description varchar(50),
    PRIMARY KEY (id)
);

INSERT INTO Transmission (description)
VALUES ('Manual');
INSERT INTO Transmission (description)
VALUES ('Shiftronic');
INSERT INTO Transmission (description)
VALUES ('Dual Automatic');

SELECT * FROM Transmission;

CREATE TABLE FuelType (
    id int NOT NULL AUTO_INCREMENT,
    description varchar(50),
    PRIMARY KEY (id)
);

INSERT INTO FuelType (description)
VALUES ('Gasoline');
INSERT INTO FuelType (description)
VALUES ('Diesel');
INSERT INTO FuelType (description)
VALUES ('Hibrid');
INSERT INTO FuelType (description)
VALUES ('Electric');

SELECT * FROM FuelType;

CREATE TABLE CarType (
    id int NOT NULL AUTO_INCREMENT,
    description varchar(50),
    PRIMARY KEY (id)
);

INSERT INTO CarType (description)
VALUES ('Sedan');
INSERT INTO CarType (description)
VALUES ('Pick Up 4x4');
INSERT INTO CarType (description)
VALUES ('PickUp 4x2');
INSERT INTO CarType (description)
VALUES ('SUV 4x4');
INSERT INTO CarType (description)
VALUES ('SUV 4x2');
INSERT INTO CarType (description)
VALUES ('Hatchback');
INSERT INTO CarType (description)
VALUES ('Station Wagon');
INSERT INTO CarType (description)
VALUES ('Minivan');

SELECT * FROM CarType;

CREATE TABLE Users (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(50) DEFAULT NULL,
  last_name varchar(50) DEFAULT NULL,
  email varchar(50) DEFAULT NULL,
  password varchar(50) DEFAULT NULL,
  type varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
);

INSERT INTO Users (name, last_name, email, password, type) 
VALUES ('Braulio', 'Sandi', 'bsandim@castrocarazo.ac.cr', 'Admin$1234', 'root');
INSERT INTO Users (name, last_name, email, password, type) 
VALUES ('Jason', 'Taylor', 'jtaylor@castrocarazo.ac.cr', 'Admin$1234', 'sales');


