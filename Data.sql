INSERT INTO USER (UserId, Password, FirstName, LastName, MiddleName, Email) 
VALUES 
(1, SHA2('password1', 256), 'Chetan', 'Kar', NULL, 'chetankar65@gmail.com'),
(2, SHA2('password2', 256), 'Aarav', 'Patel', 'Kumar', 'aarav.patel@example.com'),
(3, SHA2('password3', 256), 'Ananya', 'Sharma', 'Singh', 'ananya.sharma@example.com'),
(4, SHA2('password4', 256), 'Aryan', 'Das', 'Gupta', 'aryan.das@example.com'),
(5, SHA2('password5', 256), 'Neha', NULL, NULL, 'neha.joshi@example.com'),
(6, SHA2('password6', 256), 'Rahul', 'Gupta', 'Sharma', 'rahul.gupta@example.com'),
(7, SHA2('password7', 256), 'Priya', NULL, 'Kumari', 'priya.verma@example.com'),
(8, SHA2('password8', 256), 'Ravi', 'Malhotra', 'Singh', 'ravi.malhotra@example.com'),
(9, SHA2('password9', 256), 'Sneha', 'Choudhary', 'Yadav', 'sneha.choudhary@example.com'),
(10, SHA2('password10', 256), 'Shubham', 'Pahilwani', NULL, 'shubhampahilwani1@gmail.com');

INSERT INTO CITY (CityID, Name, State, Country)
VALUES
(1, 'Bengaluru', 'Karnataka', 'India'),
(2, 'Mumbai', 'Maharashtra', 'India'),
(3, 'Hyderabad', 'Telangana', 'India'),
(4, 'Dubai', 'Emirate of Dubai', 'United Arab Emirates'),
(5, 'New York City', 'New York', 'United States of America'),
(6, 'London', 'London', 'United Kingdom'),
(7, 'San Francisco', 'California', 'United States of America'),
(8, 'Jaipur', 'Rajasthan', 'India'),
(9, 'Kolkata', 'West Bengal', 'India'),
(10, 'Chennai', 'Tamil Nadu', 'India');

INSERT INTO Airport 
(AirportID, Name, CityID) VALUES
(1, 'Kempegowda International Airport', 1),
(2, 'Chatrapati Shivaji International Airport', 2),
(3, 'Rajiv Gandhi International Airport', 3),
(4, 'Dubai International Airport', 4),
(5, 'Heathrow International Airport', 5),
(6, 'JFK International Airport', 6),
(7, 'Sanfrancisco International Airport', 7),
(8, 'Jaipur International Airport', 8),
(9, 'DV Patil International Airport', 2),
(10, 'Dumdum Airport', 9);

INSERT INTO HOTEL (HotelID, HotelName, CityID) 
VALUES 
(1, 'Taj Mahal Palace', 2),
(2, 'ITC Gardenia', 1),    
(3, 'Taj Falaknuma Palace', 3),
(4, 'JW Marriott Marquis Hotel Dubai', 4),
(5, 'The Plaza Hotel', 5), 
(6, 'The Ritz London', 6),  
(7, 'The St. Regis San Francisco', 7),
(8, 'Fairmont Jaipur', 8),  
(9, 'The Oberoi Bengaluru', 1), 
(10, 'Taj Lands End, Mumbai', 2), 
(11, 'ITC Kakatiya, Hyderabad', 3),
(12, 'Burj Al Arab Jumeirah', 4), 
(13, 'The Peninsula New York', 5), 
(14, 'The Langham London', 6), 
(15, 'Hotel Nikko San Francisco', 7), 
(16, 'Rambagh Palace, Jaipur', 8),
(17, 'JW Marriot Chennai', 10);

INSERT INTO ROOM_TYPES (TypeName, Count, Price, HotelID) 
VALUES ('Luxury Suite', 10, 500.00, 1),
('Deluxe Room', 20, 250.00, 1),
('Executive Suite', 5, 800.00, 1),
('Garden View Room', 15, 300.00, 2),
('Executive Club Room', 10, 400.00, 2),
('Presidential Suite', 3, 1200.00, 2),
('Grand Royal Suite', 5, 1500.00, 3),
('Heritage Room', 20, 600.00, 3),
('Nizam Suite', 3, 2000.00, 3),
('Deluxe Room', 30, 400.00, 4),
('Executive Suite', 15, 800.00, 4),
('Royal Suite', 5, 1500.00, 4),
('Plaza Suite', 10, 1000.00, 5),
('Grand Suite', 20, 700.00, 5),
('Deluxe Room', 50, 400.00, 5),
('Junior Suite', 8, 900.00, 6),
('Executive Room', 15, 600.00, 6),
('Penthouse Suite', 3, 2500.00, 6),
('Superior Room', 25, 500.00, 7),
('Executive Suite', 10, 1000.00, 7),
('St. Regis Suite', 5, 1500.00, 7),
('Royal Suite', 5, 1200.00, 8),
('Deluxe Room', 30, 400.00, 8),
('Luxury Tent', 10, 800.00, 8),
('Deluxe Room', 45, 900.00, 17);

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

INSERT INTO AGENT (AgentID, Name, Exp, AgencyID) 
VALUES 
(1, 'Aarav Mehta', 5, 1),     -- Thomas Cook
(2, 'Anjali Singhania', 7, 2), -- MakeMyTrip
(3, 'Rohan Khanna', 6, 3),    -- Cox & Kings
(4, 'Shreya Patel', 8, 4),     -- Expedia
(5, 'Amit Kumar', 4, 5),       -- Travelocity
(6, 'Kavita Sharma', 9, 6),    -- Goibibo
(7, 'Rajeev Desai', 3, 7),     -- Yatra.com
(8, 'Sneha Gupta', 6, 8);      -- Cleartrip

INSERT INTO PACKAGE (PackageID, Title, AgencyID) 
VALUES 
(1, 'Golden Triangle Tour', 1),  -- Thomas Cook
(2, 'Andaman Adventure', 2),      -- MakeMyTrip
(3, 'Goa Beach Getaway', 3),      -- Cox & Kings
(4, 'Dubai Desert Safari', 4),    -- Expedia
(5, 'New York City Explorer', 5), -- Travelocity
(6, 'London Theater Experience', 6), -- Goibibo
(7, 'San Francisco Bay Cruise', 7), -- Yatra.com
(8, 'Rajasthan Heritage Tour', 8), -- Cleartrip
(9, 'Goa Family Pack', 1),    -- Thomas Cook
(10, 'South India special package', 2);    -- MakeMyTrip

INSERT INTO AIRLINE (AirlineID, Name) 
VALUES 
(1, 'Emirates'),
(2, 'Singapore Airlines'),
(3, 'Qatar Airways'),
(4, 'Cathay Pacific'),
(5, 'British Airways'),
(6, 'Lufthansa'),
(7, 'Air France'),
(8, 'Delta Air Lines'),
(9, 'IndiGo'),
(10, 'Vistara'),
(11, 'Spicejet'),
(12, 'Air India');

INSERT INTO BUS (BusID, Name, Seats, Fare, DeptDateTime, ArrDateTime, DepartureCity, ArrivalCity)
VALUES
(7273, 'Morning Star Travels', 40, 2050, '2024-04-10 07:00:00', '2024-04-10 15:00:00', 3, 1), -- Hyd to BLR
(7689, 'Morning Star Travels', 40, 2090, '2024-04-11 08:00:00', '2024-04-11 16:00:00', 1, 3), -- BLR to Hyd
(8383, 'Vinayak Travels', 47, 1990, '2024-04-12 09:00:00', '2024-04-12 17:00:00', 1, 2), -- Blr to Mum
(6111, 'TSRTC', 53, 3500, '2024-04-13 10:00:00', '2024-04-13 18:00:00', 3, 2), -- Hyd to Mumbai
(4555, 'MSRTC', 53, 3900, '2024-04-14 11:00:00', '2024-04-14 19:00:00', 2, 3), -- Mumbai to Hyd
(3001, 'TSRTC', 60, 1900, '2024-04-14 11:00:00', '2024-04-14 19:00:00', 1, 3), -- blr to hyd
(3393, 'KSRTC', 65, 1500, '2024-04-16 12:00:00', '2024-04-14 16:00:00', 1, 10); -- blr to chennai

INSERT INTO INCL_CITY
VALUES
('2024-04-10', 2, 1, 1),
('2024-04-12', 8, 1, 1),
('2024-04-14', 9, 1, 1),
('2024-04-16', 10, 1, 1),
('2024-04-11', 5, 5, 5),
('2024-04-13', 10, 10, 2),
('2024-04-15', 1, 10, 2),
('2024-04-17', 3, 10, 2),
('2024-04-19', 2, 10, 2),
('2024-05-20', 6, 6, 6);

-- South India package from Hyderabad to Bangalore
INSERT INTO INCL_BUS
VALUES
(7689, 10, 2),
(3393, 10, 2);

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

INSERT INTO BOOKING (BookingID, UserID)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO PAYMENT (PaymentID, Method, TransactionDateTime, Amount, BookingID)
VALUES
(1, 'UPI', '2024-4-5 15:00', 7000, 1),
(2, 'Debit', '2024-4-5 15:00', 9000, 2),
(3, 'Credit', '2024-4-5 15:00', 4000, 3),
(4, 'Netbanking', '2024-4-5 15:00', 6000, 4),
(5, 'UPI', '2024-4-5 15:00', 7000, 5);

INSERT INTO BOOKS_BUS (BookingID, BusID)
VALUES
(1, 3001),
(2, 3393);

INSERT INTO BOOKS_ROOM (CheckInDate, CheckOutDate, Quantity, BookingId, TypeName, HotelId)
VALUES
('2024-4-13', '2024-4-15', 1, 1, 'Nizam Suite', 3),
('2024-4-13', '2024-4-15', 2, 2, 'Executive Club Room', 2);

INSERT INTO BOOKS_PACKAGE (BookingID, PackageID, AgencyID)
VALUES
(3, 1, 1),
(4, 2, 2);

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

INSERT INTO INCL_FLIGHT (FlightId, PackageId, AgencyId)
VALUES
(2, 6, 6),
(3, 7, 7),
(9, 10, 2),
(8, 4, 4),
(10, 1, 1),
(11, 1, 1);

INSERT INTO BOOKS_FLIGHT
VALUES 
(4, 1),
(5, 1);