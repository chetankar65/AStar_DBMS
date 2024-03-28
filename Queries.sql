----------------------- SOME QUERIES TO TEST THE DATABASE------------------------------------------------
-- What packages are available
SELECT * FROM Package;

-- What cities are covered in individial packages
SELECT Agency.Name as Agency_Name, Package.Title as Package_title, City.Name as Cities_covered FROM Package
INNER JOIN Agency on Package.AgencyID = Agency.AgencyID
INNER JOIN INCL_CITY on Package.PackageID = INCL_CITY.PackageID
INNER JOIN CITY on INCL_CITY.CityID = City.CityID
ORDER BY (Package.Title);

-- What hotels are covered in individual packages
SELECT Agency.Name as Agency_Name, Package.Title as Package_title, Hotel.HotelName AS Hotel_name, City.Name as City_name FROM Package
INNER JOIN Agency on Package.AgencyID = Agency.AgencyID
INNER JOIN INCL_ROOM on Package.PackageID = INCL_ROOM.PackageID
INNER JOIN HOTEL on INCL_ROOM.HotelID = HOTEL.CityID
INNER JOIN CITY on Hotel.CityID = City.CityID
ORDER BY (Package.Title);

-- What flights are covered in packages
SELECT Agency.Name as Agency_Name, Package.Title as Package_title, Airline.Name as Airline FROM Package
INNER JOIN Agency on Package.AgencyID = Agency.AgencyID
INNER JOIN INCL_FLIGHT on Package.PackageID = INCL_FLIGHT.PackageID
INNER JOIN FLIGHT on INCL_FLIGHT.FlightID = Flight.FlightID
INNER JOIN AIRLINE on FLIGHT.AirlineID = Airline.AirlineID
ORDER BY (Package.Title);

-- Display flight details of flights booked by Aryan Gupta
SELECT Flight.FlightID, Airline.Name, A1.Name, A2.Name FROM Flight
INNER JOIN BOOKS_FLIGHT on Flight.FlightID = BOOKS_FLIGHT.FlightID
INNER JOIN Airline on Flight.AirlineID = Airline.AirlineID
INNER JOIN BOOKING on BOOKS_FLIGHT.BookingID = BOOKING.BookingID 
INNER JOIN Airport A1 on A1.AirportID = Flight.DepartureAirport
INNER JOIN Airport A2 on A2.AirportID = Flight.ArrivalAirport
WHERE BOOKING.UserID = (SELECT UserID FROM USER WHERE email = 'aryan.das@example.com');

-- Display hotels along with roomtypes present in Bengaluru, Mumbai and Chennai
SELECT Hotel.HotelName AS Hotel_name, City.Name AS City, ROOM_TYPES.TypeName as Room_type, ROOM_TYPES.Count AS Rooms_available, 
ROOM_TYPES.Price as Price_per_night FROM ROOM_TYPES
JOIN Hotel on Hotel.HotelId = ROOM_TYPES.HotelID
JOIN City on City.CityID = Hotel.CityID
WHERE City.CityID in (Select CityID from CITY where City.Name = 'Bengaluru' or City.Name = 'Mumbai' 
or City.Name = 'Chennai');

---- Display average price of hotel rooms present in hotels in Bengaluru
Select City.Name, ROUND(AVG(ROOM_TYPES.Price), 2) AS Avg_cost_per_night FROM ROOM_TYPES
INNER JOIN HOTEL ON Hotel.HotelID = ROOM_TYPES.HotelID
INNER JOIN CITY ON City.CityID = Hotel.CityID
WHERE City.CityID = (Select CityId from City where City.Name = 'Bengaluru')
GROUP BY City.CityID;  

---- Display Hotel rooms in bengaluru that have below average price
Select Hotel.HotelName, ROOM_TYPES.TypeName, ROOM_TYPES.Price FROM ROOM_TYPES
INNER JOIN HOTEL ON Hotel.HotelID = ROOM_TYPES.HotelID
INNER JOIN CITY ON City.CityID = Hotel.CityID
WHERE City.CityID = (Select CityId from City where City.Name = 'Bengaluru')
AND ROOM_TYPES.Price < (SELECT ROUND(AVG(ROOM_TYPES.Price), 2) AS Avg_cost_per_night FROM ROOM_TYPES
INNER JOIN HOTEL ON Hotel.HotelID = ROOM_TYPES.HotelID
INNER JOIN CITY ON City.CityID = Hotel.CityID
WHERE City.CityID = (Select CityId from City where City.Name = 'Bengaluru')
GROUP BY City.CityID);