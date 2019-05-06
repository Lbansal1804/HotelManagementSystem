-- How many DISTINCT guest have made bookings for a particular mONth?
SELECT DISTINCT CustomerID FROM Booking
GROUP BY BookingDate;

-- How many available rooms are in a particular hotel for a given date?
SELECT COUNT(*) numbersofrooms FROM Booking bk JOIN RoomType rt 
	ON rt.RoomTypeID = bk.RoomTypeID
JOIN Hotel hl 
	ON hl.RoomCapacityID = rt.RoomTypeID
WHERE bk.BookingDate = "2018-08-02";

-- How many hotels are in a hotel chain?
SELECT COUNT(*) NUmberOFHotels FROM Hotelchain hc
JOIN hotel hl 
	ON hl.ChainID = hc.ChainID;

-- How many books has a customer made in ONe year?
SELECT COUNT(*) FROM Booking 
GROUP BY CustomerID,YEAR(BookingDate);

-- How many rooms are booked in a particular hotel ON a given date?
SELECT COUNT(*) numbersofrooms FROM Booking bk
JOIN RoomType rt 
	ON rt.RoomTypeID = bk.RoomTypeID
JOIN Hotel hl 
	ON hl.RoomCapacityID = rt.RoomTypeID
WHERE bk.BookingDate = "2018-08-02";

-- List all the unique COUNTries hotels are located in.
SELECT DISTINCT ct.COUNTryName FROM COUNTries ct
JOIN hotel hl 
	ON hl.COUNTryID = ct.COUNTryID;

-- How many rooms are available in a given hotel?
SELECT COUNT(*) numbersofrooms FROM Booking bk
JOIN RoomType rt 
	ON rt.RoomTypeID = bk.RoomTypeID
JOIN Hotel hl 
	ON hl.RoomCapacityID = rt.RoomTypeID;

-- List all the hotels that have a URL available.
SELECT URL FROM hotel WHERE URL is not null;

-- List the rate for a room at a given time during the year.
SELECT rp.Price  FROM Booking bk
JOIN RoomType rt 
	ON rt.RoomTypeID = bk.RoomTypeID
JOIN RoomCapacity rc 
	ON rc.RoomCapacityID = rt.RoomTypeID
JOIN RoomPricing rp 
	ON rp.RoomCapacityID = rc.RoomCapacityID
WHERE bk.BookingDate = "2018-08-05";












