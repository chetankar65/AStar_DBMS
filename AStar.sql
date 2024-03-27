CREATE TABLE USER
(
  UserID INT NOT NULL,
  Password VARCHAR(100) NOT NULL,
  FirstName VARCHAR(100) NOT NULL,
  LastName VARCHAR(100) NOT NULL,
  MiddleName VARCHAR(100) NOT NULL,
  Email VARCHAR(100) NOT NULL,
  PRIMARY KEY (UserID),
  UNIQUE (Email)
);

INSERT INTO USER (UserId, Password, FirstName, LastName, MiddleName, Email) 
VALUES (1, 'password1', 'Chetan', 'Kar', '', 'chetankar65@gmail.com');

INSERT INTO USER (UserId, Password, FirstName, LastName, MiddleName, Email) 
VALUES 
(2, 'password2', 'Aarav', 'Patel', 'Kumar', 'aarav.patel@example.com'),
(3, 'password3', 'Ananya', 'Sharma', 'Singh', 'ananya.sharma@example.com'),
(4, 'password4', 'Aryan', 'Das', 'Gupta', 'aryan.das@example.com'),
(5, 'password5', 'Neha', 'Joshi', 'Rao', 'neha.joshi@example.com'),
(6, 'password6', 'Rahul', 'Gupta', 'Sharma', 'rahul.gupta@example.com');

INSERT INTO USER (UserId, Password, FirstName, LastName, MiddleName, Email) 
VALUES 
(7, 'password7', 'Priya', 'Verma', 'Kumari', 'priya.verma@example.com'),
(8, 'password8', 'Ravi', 'Malhotra', 'Singh', 'ravi.malhotra@example.com'),
(9, 'password9', 'Sneha', 'Choudhary', 'Yadav', 'sneha.choudhary@example.com');

INSERT INTO USER (UserId, Password, FirstName, LastName, MiddleName, Email)
VALUES
(10, 'password10', 'Shubham', 'Pahilwani', 'Kalpesh', 'shub.pahilwan@student.nitw.ac.in');

--------------------------------------

CREATE TABLE CITY
(
  CityID INT NOT NULL,
  Name VARCHAR(100) NOT NULL,
  State VARCHAR(100) NOT NULL,
  Country VARCHAR(100) NOT NULL,
  PRIMARY KEY (CityID)
);

INSERT INTO CITY (CityID, Name, State, Country)
VALUES
(1, 'Bengaluru', 'Karnataka', 'India'),
(2, 'Mumbai', 'Maharashtra', 'India'),
(3, 'Hyderabad', 'Telangana', 'India'),
(4, 'Dubai', 'Emirate of Dubai', 'United Arab Emirates'),
(5, 'New York City', 'New York', 'United States of America'),
(6, 'London', 'London', 'United Kingdom'),
(7, 'Sanfrancisco', 'California', 'United States of America'),
(8, 'Jaipur', 'Rajasthan', 'India');

INSERT INTO CITY (CityID, Name, State, Country)
VALUES 
(9, 'Kolkata', 'West Bengal', 'India');

INSERT INTO CITY (CityID, Name, State, Country)
VALUES 
(10, 'Chennai', 'Tamil Nadu', 'India');

CREATE TABLE AIRPORT
(
  AirportID INT NOT NULL,
  Name VARCHAR(100) NOT NULL,
  CityID INT NOT NULL,
  PRIMARY KEY (AirportID),
  FOREIGN KEY (CityID) REFERENCES CITY(CityID)
);

INSERT INTO Airport 
(AirportID, Name, CityID) VALUES
(1, 'Kempegowda International Airport', 1);

INSERT INTO Airport 
(AirportID, Name, CityID) VALUES
(2, 'Chatrapati Shivaji International Airport', 2);

INSERT INTO Airport 
(AirportID, Name, CityID) VALUES
(3, 'Rajiv Gandhi International Airport', 3);

INSERT INTO Airport 
(AirportID, Name, CityID) VALUES
(4, 'Dubai International Airport', 4);

INSERT INTO Airport 
(AirportID, Name, CityID) VALUES
(5, 'Heathrow International Airport', 5);

INSERT INTO Airport 
(AirportID, Name, CityID) VALUES
(6, 'JFK International Airport', 6);

INSERT INTO Airport 
(AirportID, Name, CityID) VALUES
(7, 'Sanfrancisco International Airport', 7);

INSERT INTO Airport 
(AirportID, Name, CityID) VALUES
(8, 'Jaipur International Airport', 8);

INSERT INTO Airport 
(AirportID, Name, CityID) VALUES
(9, 'DV Patil International Airport', 2);

INSERT INTO Airport 
(AirportID, Name, CityID) VALUES
(10, 'Dumdum Airport', 9);

CREATE TABLE HOTEL
(
  HotelID INT NOT NULL,
  HotelName VARCHAR(100) NOT NULL,
  CityID INT NOT NULL,
  PRIMARY KEY (HotelID),
  FOREIGN KEY (CityID) REFERENCES CITY(CityID)
);

INSERT INTO HOTEL (HotelID, HotelName, CityID) 
VALUES 
(1, 'Taj Mahal Palace', 2), -- Mumbai
(2, 'ITC Gardenia', 1),      -- Bengaluru
(3, 'Taj Falaknuma Palace', 3), -- Hyderabad
(4, 'JW Marriott Marquis Hotel Dubai', 4), -- Dubai
(5, 'The Plaza Hotel', 5),   -- New York City
(6, 'The Ritz London', 6),   -- London
(7, 'The St. Regis San Francisco', 7), -- San Francisco
(8, 'Fairmont Jaipur', 8);   -- Jaipur

INSERT INTO HOTEL (HotelID, HotelName, CityID) 
VALUES 
(9, 'The Oberoi Bengaluru', 1),   -- Bengaluru
(10, 'Taj Lands End, Mumbai', 2),  -- Mumbai
(11, 'ITC Kakatiya, Hyderabad', 3),  -- Hyderabad
(12, 'Burj Al Arab Jumeirah', 4),  -- Dubai
(13, 'The Peninsula New York', 5),  -- New York City
(14, 'The Langham London', 6),  -- London
(15, 'Hotel Nikko San Francisco', 7),  -- San Francisco
(16, 'Rambagh Palace, Jaipur', 8);  -- Jaipur

INSERT INTO HOTEL (HotelID, HotelName, CityID)
VALUES
(17, 'JW Marriot Chennai', 10);
-----------------------------
CREATE TABLE ROOM_TYPES
(
  TypeName VARCHAR(100) NOT NULL,
  Count INT NOT NULL,
  Price FLOAT NOT NULL,
  HotelID INT NOT NULL,
  PRIMARY KEY (TypeName, HotelID),
  FOREIGN KEY (HotelID) REFERENCES HOTEL(HotelID)
);

-- Room types for Taj Mahal Palace (HotelID: 1)
INSERT INTO ROOM_TYPES (TypeName, Count, Price, HotelID) 
VALUES 
('Luxury Suite', 10, 500.00, 1),
('Deluxe Room', 20, 250.00, 1),
('Executive Suite', 5, 800.00, 1);

-- Room types for ITC Gardenia (HotelID: 2)
INSERT INTO ROOM_TYPES (TypeName, Count, Price, HotelID) 
VALUES 
('Garden View Room', 15, 300.00, 2),
('Executive Club Room', 10, 400.00, 2),
('Presidential Suite', 3, 1200.00, 2);

-- Room types for Taj Falaknuma Palace (HotelID: 3)
INSERT INTO ROOM_TYPES (TypeName, Count, Price, HotelID) 
VALUES 
('Grand Royal Suite', 5, 1500.00, 3),
('Heritage Room', 20, 600.00, 3),
('Nizam Suite', 3, 2000.00, 3);

-- Room types for JW Marriott Marquis Hotel Dubai (HotelID: 4)
INSERT INTO ROOM_TYPES (TypeName, Count, Price, HotelID) 
VALUES 
('Deluxe Room', 30, 400.00, 4),
('Executive Suite', 15, 800.00, 4),
('Royal Suite', 5, 1500.00, 4);

-- Room types for The Plaza Hotel (HotelID: 5)
INSERT INTO ROOM_TYPES (TypeName, Count, Price, HotelID) 
VALUES 
('Plaza Suite', 10, 1000.00, 5),
('Grand Suite', 20, 700.00, 5),
('Deluxe Room', 50, 400.00, 5);

-- Room types for The Ritz London (HotelID: 6)
INSERT INTO ROOM_TYPES (TypeName, Count, Price, HotelID) 
VALUES 
('Junior Suite', 8, 900.00, 6),
('Executive Room', 15, 600.00, 6),
('Penthouse Suite', 3, 2500.00, 6);

-- Room types for The St. Regis San Francisco (HotelID: 7)
INSERT INTO ROOM_TYPES (TypeName, Count, Price, HotelID) 
VALUES 
('Superior Room', 25, 500.00, 7),
('Executive Suite', 10, 1000.00, 7),
('St. Regis Suite', 5, 1500.00, 7);

-- Room types for Fairmont Jaipur (HotelID: 8)
INSERT INTO ROOM_TYPES (TypeName, Count, Price, HotelID) 
VALUES 
('Royal Suite', 5, 1200.00, 8),
('Deluxe Room', 30, 400.00, 8),
('Luxury Tent', 10, 800.00, 8);

---- Chennai
INSERT INTO ROOM_TYPES (TypeName, count, Price, HotelID)
VALUES
('Deluxe Room', 45, 900.00, 17);

-----------------------------------
CREATE TABLE AGENCY (
  AgencyID INT NOT NULL,
  Name VARCHAR(100) NOT NULL,
  PRIMARY KEY (AgencyID)
);

INSERT INTO AGENCY (AgencyID, Name) 
VALUES 
(1, 'Thomas Cook'),
(2, 'MakeMyTrip'),
(3, 'Cox & Kings'),
(4, 'Expedia'),
(5, 'Travelocity'),
(6, 'Goibibo'),
(7, 'Yatra.com'),
(8, 'Cleartrip');

---------------------------------------
CREATE TABLE AGENT
(
  AgentID INT NOT NULL,
  Name VARCHAR(100) NOT NULL,
  Exp INT NOT NULL,
  AgencyID INT NOT NULL,
  PRIMARY KEY (AgentID, AgencyID),
  FOREIGN KEY (AgencyID) REFERENCES AGENCY(AgencyID)
);

INSERT INTO AGENT (AgentID, Name, Exp, AgencyID) 
VALUES 
(1, 'Aarav Mehta', 5, 1),     -- Thomas Cook
(2, 'Anjali Singhania', 7, 2),-- MakeMyTrip
(3, 'Rohan Khanna', 6, 3),    -- Cox & Kings
(4, 'Shreya Patel', 8, 4),     -- Expedia
(5, 'Amit Kumar', 4, 5),       -- Travelocity
(6, 'Kavita Sharma', 9, 6),    -- Goibibo
(7, 'Rajeev Desai', 3, 7),     -- Yatra.com
(8, 'Sneha Gupta', 6, 8);      -- Cleartrip
------------------------------------------

CREATE TABLE PACKAGE
(
  PackageID INT NOT NULL,
  Title VARCHAR(100) NOT NULL,
  AgencyID INT NOT NULL,
  PRIMARY KEY (PackageID, AgencyID),
  FOREIGN KEY (AgencyID) REFERENCES AGENCY(AgencyID)
);

INSERT INTO PACKAGE (PackageID, Title, AgencyID) 
VALUES 
(1, 'Golden Triangle Tour', 1),  -- Thomas Cook
(2, 'Andaman Adventure', 2),      -- MakeMyTrip
(3, 'Goa Beach Getaway', 3),      -- Cox & Kings
(4, 'Dubai Desert Safari', 4),    -- Expedia
(5, 'New York City Explorer', 5), -- Travelocity
(6, 'London Theater Experience', 6), -- Goibibo
(7, 'San Francisco Bay Cruise', 7), -- Yatra.com
(8, 'Rajasthan Heritage Tour', 8); -- Cleartrip

INSERT INTO PACKAGE (PackageID, Title, AgencyID) 
VALUES 
(9, 'Goa Family Pack', 1),    -- Thomas Cook
(10, 'South India special package', 2);    -- MakeMyTrip


-----------------------------

CREATE TABLE AIRLINE
(
  AirlineID INT NOT NULL,
  Name VARCHAR(100) NOT NULL,
  PRIMARY KEY (AirlineID)
);

INSERT INTO AIRLINE (AirlineID, Name) 
VALUES 
(1, 'Emirates'),
(2, 'Singapore Airlines'),
(3, 'Qatar Airways'),
(4, 'Cathay Pacific'),
(5, 'British Airways'),
(6, 'Lufthansa'),
(7, 'Air France'),
(8, 'Delta Air Lines');

INSERT INTO AIRLINE (AirlineID, Name) 
VALUES 
(9, 'IndiGo'),
(10, 'Vistara');

INSERT INTO AIRLINE (AirlineID, Name) 
VALUES 
(11, 'Spicejet'),
(12, 'Air India');

---------------------------

CREATE TABLE BUS
(
  BusID INT NOT NULL,
  Name VARCHAR(100) NOT NULL,
  Seats INT NOT NULL,
  Fare FLOAT NOT NULL,
  DeptDateTime DATE NOT NULL,
  ArrDateTime DATE NOT NULL,
  DepartureCity INT NOT NULL,
  ArrivalCity INT NOT NULL,
  PRIMARY KEY (BusID),
  FOREIGN KEY (DepartureCity) REFERENCES CITY(CityID),
  FOREIGN KEY (ArrivalCity) REFERENCES CITY(CityID)
);

INSERT INTO BUS (BusID, Name, Seats, Fare, DeptDateTime, ArrDateTime, DepartureCity, ArrivalCity)
VALUES
(7273, 'Morning Star Travels', 40, 2050, '2024-04-10 07:00:00', '2024-04-10 15:00:00', 3, 1), -- Hyd to BLR
(7689, 'Morning Star Travels', 40, 2090, '2024-04-11 08:00:00', '2024-04-11 16:00:00', 1, 3), -- BLR to Hyd
(8383, 'Vinayak Travels', 47, 1990, '2024-04-12 09:00:00', '2024-04-12 17:00:00', 1, 2), -- Blr to Mum
(6111, 'TSRTC', 53, 3500, '2024-04-13 10:00:00', '2024-04-13 18:00:00', 3, 2), -- Hyd to Mumbai
(4555, 'MSRTC', 53, 3900, '2024-04-14 11:00:00', '2024-04-14 19:00:00', 2, 3); -- Mumbai to Hyd

INSERT INTO BUS (BusID, Name, Seats, Fare, DeptDateTime, ArrDateTime, DepartureCity, ArrivalCity)
VALUES
(3001, 'TSRTC', 60, 1900, '2024-04-14 11:00:00', '2024-04-14 19:00:00', 1, 3), -- blr to hyd
(3393, 'KSRTC', 65, 1500, '2024-04-16 12:00:00', '2024-04-14 16:00:00', 1, 10); -- blr to chennai

---------------------------------------------------

CREATE TABLE INCL_CITY
(
  ArrDate DATE NOT NULL,
  CityID INT NOT NULL,
  PackageID INT NOT NULL,
  AgencyID INT NOT NULL,
  PRIMARY KEY (CityID, PackageID, AgencyID),
  FOREIGN KEY (CityID) REFERENCES CITY(CityID),
  FOREIGN KEY (PackageID, AgencyID) REFERENCES PACKAGE(PackageID, AgencyID)
);

-- Mumbai city package
INSERT INTO INCL_CITY
VALUES
('2024-04-10', 2, 1, 1);

INSERT INTO INCL_CITY
VALUES
('2024-04-12', 8, 1, 1);

INSERT INTO INCL_CITY
VALUES
('2024-04-14', 9, 1, 1);

INSERT INTO INCL_CITY
VALUES
('2024-04-16', 10, 1, 1);

-- New York city package
INSERT INTO INCL_CITY
VALUES
('2024-04-11', 5, 5, 5);

-- South India travel package
INSERT INTO INCL_CITY
VALUES
('2024-04-13', 10, 10, 2);

INSERT INTO INCL_CITY
VALUES
('2024-04-15', 1, 10, 2);

INSERT INTO INCL_CITY
VALUES
('2024-04-17', 3, 10, 2);

INSERT INTO INCL_CITY
VALUES
('2024-04-19', 2, 10, 2);

--- London Travel experience
INSERT INTO INCL_CITY
VALUES
('2024-05-20', 6, 6, 6);


-------------------------------------------------------------------------------

CREATE TABLE INCL_BUS
(
  BusID INT NOT NULL,
  PackageID INT NOT NULL,
  AgencyID INT NOT NULL,
  PRIMARY KEY (BusID, PackageID, AgencyID),
  FOREIGN KEY (BusID) REFERENCES BUS(BusID),
  FOREIGN KEY (PackageID, AgencyID) REFERENCES PACKAGE(PackageID, AgencyID)
);

-- South India package from Hyderabad to Bangalore
INSERT INTO INCL_BUS
VALUES
(7689, 10, 2);

-- South India Package from Bangalore to Chennai
INSERT INTO INCL_BUS
VALUES
(3393, 10, 2);


--------------------------------------------

CREATE TABLE INCL_ROOM
(
  TypeName VARCHAR(100) NOT NULL,
  HotelID INT NOT NULL,
  PackageID INT NOT NULL,
  AgencyID INT NOT NULL,
  PRIMARY KEY (TypeName, HotelID, PackageID, AgencyID),
  FOREIGN KEY (TypeName, HotelID) REFERENCES ROOM_TYPES(TypeName, HotelID),
  FOREIGN KEY (PackageID, AgencyID) REFERENCES PACKAGE(PackageID, AgencyID)
);

-- Bengaluru (under packageID 10, agencyID 2)
INSERT INTO INCL_ROOM (TypeName, HotelID, PackageID, AgencyID)
VALUES ('Presidential Suite', 2, 10, 2);

-- Mumbai (under packageIDs 1 and 10, agencyIDs 1 and 2)
INSERT INTO INCL_ROOM (TypeName, HotelID, PackageID, AgencyID)
VALUES ('Luxury Suite', 1, 1, 1),
       ('Luxury Suite', 1, 10, 2);

-- Jaipur (under packageID 8, agencyID 8)
INSERT INTO INCL_ROOM (TypeName, HotelID, PackageID, AgencyID)
VALUES ('Luxury Tent', 8, 8, 8);

-- London (under packageID 6, agencyID 6)
INSERT INTO INCL_ROOM (TypeName, HotelID, PackageID, AgencyID)
VALUES ('Junior Suite', 6, 6, 6);

-- San Francisco (Under packageID 7, AgencyID 7)
INSERT INTO INCL_ROOM (TypeName, HotelID, PackageID, AgencyID)
VALUES ('Executive Suite', 7, 7, 7);

-- Chennai (Under packageID 10, agencyID 2)
INSERT INTO INCL_ROOM (TypeName, HotelID, PackageID, AgencyID)
VALUES ('Deluxe Room', 17, 10, 2);

---------------------------------------------

CREATE TABLE BOOKING
(
  BookingID INT NOT NULL,
  UserID INT NOT NULL,
  PRIMARY KEY (BookingID),
  FOREIGN KEY (UserID) REFERENCES USER(UserID)
);

INSERT INTO BOOKING (BookingID, UserID)
VALUES
(1, 1);

INSERT INTO BOOKING (BookingID, UserID)
VALUES
(2, 2);

INSERT INTO BOOKING (BookingID, UserID)
VALUES
(3, 3);

INSERT INTO BOOKING (BookingID, UserID)
VALUES
(4, 4);

INSERT INTO BOOKING (BookingID, UserID)
VALUES
(5, 5);
-----------------------

CREATE TABLE PAYMENT
(
  PaymentID INT NOT NULL,
  Method VARCHAR(100) NOT NULL,
  TransactionDateTime DATE NOT NULL,
  Amount FLOAT NOT NULL,
  BookingID INT NOT NULL,
  PRIMARY KEY (PaymentID),
  FOREIGN KEY (BookingID) REFERENCES BOOKING(BookingID)
);


INSERT INTO PAYMENT
(PaymentID, Method, TransactionDateTime, Amount, BookingID)
VALUES
(1, 'UPI', '2024-4-5 15:00', 7000, 1);

INSERT INTO PAYMENT
(PaymentID, Method, TransactionDateTime, Amount, BookingID)
VALUES
(2, 'Debit', '2024-4-5 15:00', 9000, 2);

INSERT INTO PAYMENT
(PaymentID, Method, TransactionDateTime, Amount, BookingID)
VALUES
(3, 'Credit', '2024-4-5 15:00', 4000, 3);

INSERT INTO PAYMENT
(PaymentID, Method, TransactionDateTime, Amount, BookingID)
VALUES
(4, 'Netbanking', '2024-4-5 15:00', 6000, 4);

INSERT INTO PAYMENT
(PaymentID, Method, TransactionDateTime, Amount, BookingID)
VALUES
(5, 'UPI', '2024-4-5 15:00', 7000, 5);


---------------------------
CREATE TABLE BOOKS_BUS
(
  BookingID INT NOT NULL,
  BusID INT NOT NULL,
  PRIMARY KEY (BookingID, BusID),
  FOREIGN KEY (BookingID) REFERENCES BOOKING(BookingID),
  FOREIGN KEY (BusID) REFERENCES BUS(BusID)
);

INSERT INTO BOOKS_BUS (BookingID, BusID)
VALUES
(1, 3001);

INSERT INTO BOOKS_BUS (BookingID, BusID)
VALUES
(2, 3393);

-------------------

CREATE TABLE BOOKS_ROOM
(
  CheckInDate DATE NOT NULL,
  CheckOutDate DATE NOT NULL,
  Quantity INT NOT NULL,
  BookingID INT NOT NULL,
  TypeName VARCHAR(100) NOT NULL,
  HotelID INT NOT NULL,
  PRIMARY KEY (BookingID, TypeName, HotelID),
  FOREIGN KEY (BookingID) REFERENCES BOOKING(BookingID),
  FOREIGN KEY (TypeName, HotelID) REFERENCES ROOM_TYPES(TypeName, HotelID)
);

INSERT INTO BOOKS_ROOM (CheckInDate, CheckOutDate, Quantity, BookingId, TypeName, HotelId)
VALUES
('2024-4-13', '2024-4-15', 1, 1, 'Nizam Suite', 3);

INSERT INTO BOOKS_ROOM (CheckInDate, CheckOutDate, Quantity, BookingId, TypeName, HotelId)
VALUES
('2024-4-13', '2024-4-15', 2, 2, 'Executive Club Room', 2);


----------------------------
CREATE TABLE BOOKS_PACKAGE
(
  BookingID INT NOT NULL,
  PackageID INT NOT NULL,
  AgencyID INT NOT NULL,
  PRIMARY KEY (BookingID),
  FOREIGN KEY (BookingID) REFERENCES BOOKING(BookingID),
  FOREIGN KEY (PackageID, AgencyID) REFERENCES PACKAGE(PackageID, AgencyID)
);


INSERT INTO BOOKS_PACKAGE (BookingID, PackageID, AgencyID)
VALUES
(3, 1, 1);

INSERT INTO BOOKS_PACKAGE (BookingID, PackageID, AgencyID)
VALUES
(4, 2, 2);

------------------------------ Flights
CREATE TABLE FLIGHT
(
  FlightID INT NOT NULL,
  Seats INT NOT NULL,
  Fare FLOAT NOT NULL,
  DepartureTime DATE NOT NULL,
  ArrivalTime DATE NOT NULL,
  AirlineID INT NOT NULL,
  DepartureAirport INT NOT NULL,
  ArrivalAirport INT NOT NULL,
  PRIMARY KEY (FlightID),
  FOREIGN KEY (AirlineID) REFERENCES AIRLINE(AirlineID),
  FOREIGN KEY (DepartureAirport) REFERENCES AIRPORT(AirportID),
  FOREIGN KEY (ArrivalAirport) REFERENCES AIRPORT(AirportID)
);

-- Blr to Mumbai (Emirates)
INSERT INTO FLIGHT (FlightID, Seats, Fare, DepartureTime, ArrivalTime, AirlineID, DepartureAirport, ArrivalAirport)
VALUES 
(1, 150, 5000.00, '2024-04-10', '2024-04-10', 1, 1, 2);

-- Blr to London (British Airways)
INSERT INTO FLIGHT (FlightID, Seats, Fare, DepartureTime, ArrivalTime, AirlineID, DepartureAirport, ArrivalAirport)
VALUES 
(2, 200, 12000.00, '2024-04-11', '2024-04-11', 5, 1, 5);

-- Blr to San Francisco (Lufthansa)
INSERT INTO FLIGHT (FlightID, Seats, Fare, DepartureTime, ArrivalTime, AirlineID, DepartureAirport, ArrivalAirport)
VALUES 
(3, 180, 15000.00, '2024-04-12', '2024-04-12', 6, 1, 7);

-- Blr to Hyderabad (IndiGo)
INSERT INTO FLIGHT (FlightID, Seats, Fare, DepartureTime, ArrivalTime, AirlineID, DepartureAirport, ArrivalAirport)
VALUES 
(4, 160, 4000.00, '2024-04-13', '2024-04-13', 9, 1, 3);

-- Blr to Chennai (Spicejet)
INSERT INTO FLIGHT (FlightID, Seats, Fare, DepartureTime, ArrivalTime, AirlineID, DepartureAirport, ArrivalAirport)
VALUES 
(5, 150, 3500.00, '2024-04-14', '2024-04-14', 11, 1, 10);

-- Hyd to San Francisco (Air India)
INSERT INTO FLIGHT (FlightID, Seats, Fare, DepartureTime, ArrivalTime, AirlineID, DepartureAirport, ArrivalAirport)
VALUES 
(6, 180, 18000.00, '2024-04-15', '2024-04-15', 12, 3, 7);

-- Jaipur to Bengaluru (Vistara)
INSERT INTO FLIGHT (FlightID, Seats, Fare, DepartureTime, ArrivalTime, AirlineID, DepartureAirport, ArrivalAirport)
VALUES 
(7, 140, 6000.00, '2024-04-16', '2024-04-16', 10, 8, 1);

-- Jaipur to Dubai (Emirates)
INSERT INTO FLIGHT (FlightID, Seats, Fare, DepartureTime, ArrivalTime, AirlineID, DepartureAirport, ArrivalAirport)
VALUES 
(8, 200, 18000.00, '2024-04-17', '2024-04-17', 1, 8, 4);

-- Mumbai to Bangalore (IndiGo)
INSERT INTO FLIGHT (FlightID, Seats, Fare, DepartureTime, ArrivalTime, AirlineID, DepartureAirport, ArrivalAirport)
VALUES 
(9, 180, 4500.00, '2024-04-18', '2024-04-18', 9, 2, 1);

-- Mumbai to Kolkata (Air India)
INSERT INTO FLIGHT (FlightID, Seats, Fare, DepartureTime, ArrivalTime, AirlineID, DepartureAirport, ArrivalAirport)
VALUES 
(11, 180, 6000.00, '2024-04-15', '2024-04-15', 12, 2, 3);

-- Chennai to Kolkata (SpiceJet)
INSERT INTO FLIGHT (FlightID, Seats, Fare, DepartureTime, ArrivalTime, AirlineID, DepartureAirport, ArrivalAirport)
VALUES 
(10, 160, 5500.00, '2024-04-19', '2024-04-19', 11, 10, 3);


----------------------------------------------
---- Travel packages will contain these flights
CREATE TABLE INCL_FLIGHT
(
  FlightID INT NOT NULL,
  PackageID INT NOT NULL,
  AgencyID INT NOT NULL,
  PRIMARY KEY (FlightID, PackageID, AgencyID),
  FOREIGN KEY (FlightID) REFERENCES FLIGHT(FlightID),
  FOREIGN KEY (PackageID, AgencyID) REFERENCES PACKAGE(PackageID, AgencyID)
);

---- London package
INSERT INTO INCL_FLIGHT (FlightId, PackageId, AgencyId)
VALUES
(2, 6, 6);

--- Sanfrancisco package
INSERT INTO INCL_FLIGHT (FlightId, PackageId, AgencyId)
VALUES
(3, 7, 7);

--- South India package
INSERT INTO INCL_FLIGHT (FlightId, PackageId, AgencyId)
VALUES
(9, 10, 2);

-- Dubai tour
INSERT INTO INCL_FLIGHT (FlightId, PackageId, AgencyId)
VALUES
(8, 4, 4);

--- Golden quadrilateral tour
INSERT INTO INCL_FLIGHT (FlightId, PackageId, AgencyId)
VALUES
(10, 1, 1);

INSERT INTO INCL_FLIGHT (FlightId, PackageId, AgencyId)
VALUES
(11, 1, 1);

---------------------------------------------------

CREATE TABLE BOOKS_FLIGHT
(
  BookingID INT NOT NULL,
  FlightID INT NOT NULL,
  PRIMARY KEY (BookingID, FlightID),
  FOREIGN KEY (BookingID) REFERENCES BOOKING(BookingID),
  FOREIGN KEY (FlightID) REFERENCES FLIGHT(FlightID)
);

INSERT INTO BOOKS_FLIGHT
VALUES 
(4, 1);

INSERT INTO BOOKS_FLIGHT
VALUES 
(5, 1);

----------------------- SOME QUERIES TO TEST THE DATABASE------------------------------------------------
---- What packages are available
SELECT * FROM Package;

---- What cities are covered in individial packages
SELECT Agency.Name as Agency_Name, Package.Title as Package_title, City.Name as Cities_covered FROM Package
INNER JOIN Agency on Package.AgencyID = Agency.AgencyID
INNER JOIN INCL_CITY on Package.PackageID = INCL_CITY.PackageID
INNER JOIN CITY on INCL_CITY.CityID = City.CityID
ORDER BY (Package.Title);

---- What hotels are covered in individual packages
SELECT Agency.Name as Agency_Name, Package.Title as Package_title, Hotel.HotelName AS Hotel_name, City.Name as City_name FROM Package
INNER JOIN Agency on Package.AgencyID = Agency.AgencyID
INNER JOIN INCL_ROOM on Package.PackageID = INCL_ROOM.PackageID
INNER JOIN HOTEL on INCL_ROOM.HotelID = HOTEL.CityID
INNER JOIN CITY on Hotel.CityID = City.CityID
ORDER BY (Package.Title);

---- What flights are covered in packages
SELECT Agency.Name as Agency_Name, Package.Title as Package_title, Airline.Name as Airline FROM Package
INNER JOIN Agency on Package.AgencyID = Agency.AgencyID
INNER JOIN INCL_FLIGHT on Package.PackageID = INCL_FLIGHT.PackageID
INNER JOIN FLIGHT on INCL_FLIGHT.FlightID = Flight.FlightID
INNER JOIN AIRLINE on FLIGHT.AirlineID = Airline.AirlineID
ORDER BY (Package.Title);

---- Display flight details of flights booked by Aryan Gupta
SELECT Flight.FlightID, Airline.Name, A1.Name, A2.Name FROM Flight
INNER JOIN BOOKS_FLIGHT on Flight.FlightID = BOOKS_FLIGHT.FlightID
INNER JOIN Airline on Flight.AirlineID = Airline.AirlineID
INNER JOIN BOOKING on BOOKS_FLIGHT.BookingID = BOOKING.BookingID 
INNER JOIN Airport A1 on A1.AirportID = Flight.DepartureAirport
INNER JOIN Airport A2 on A2.AirportID = Flight.ArrivalAirport
WHERE BOOKING.UserID = (SELECT UserID FROM USER WHERE email = 'aryan.das@example.com');

----- Display hotels along with roomtypes present in Bengaluru, Mumbai and Chennai
SELECT Hotel.HotelName AS Hotel_name, City.Name AS City, ROOM_TYPES.TypeName as Room_type, ROOM_TYPES.Count AS Rooms_available, 
ROOM_TYPES.Price as Price_per_night FROM ROOM_TYPES
JOIN Hotel on Hotel.HotelId = ROOM_TYPES.HotelID
JOIN City on City.CityID = Hotel.CityID
WHERE City.CityID in (Select CityID from CITY where City.Name = 'Bengaluru' or City.Name = 'Mumbai' 
or City.Name = 'Chennai');
