DROP DATABASE IF EXISTS SofiaHotelDB;

CREATE DATABASE SofiaHotelDB;

USE SofiaHotelDB;

CREATE TABLE Room (
    RoomNumber INT PRIMARY KEY,
    Type VARCHAR(50),
    ADAAccessible VARCHAR(3),
    StandardOccupancy INT,
    MaximumOccupancy INT,
    BasePrice DECIMAL(10, 2),
    ExtraPerson DECIMAL(5, 2)
);

CREATE TABLE Guest (
    GuestID INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    Zip VARCHAR(20),
    Phone VARCHAR(20)
);

CREATE TABLE Reservation (
    ReservationID INT PRIMARY KEY,
    RoomNumber INT,
    GuestID INT,
    Adults INT,
    Children INT,
    StartDate DATE,
    EndDate DATE,
    TotalRoomCost DECIMAL(10, 2),
    FOREIGN KEY (RoomNumber) REFERENCES Room(RoomNumber),
    FOREIGN KEY (GuestID) REFERENCES Guest(GuestID)
);

CREATE TABLE Room_Amenities (
    RoomAmenityID INT PRIMARY KEY,
    RoomNumber INT,
    Amenities VARCHAR(255),
    FOREIGN KEY (RoomNumber) REFERENCES Room(RoomNumber)
);
