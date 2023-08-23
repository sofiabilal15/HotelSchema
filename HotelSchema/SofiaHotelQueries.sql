-- Query 1: Delete reservations related to Jeremiah Pendergrass
DELETE FROM Reservation
WHERE GuestID = (
    SELECT GuestID
    FROM Guest
    WHERE Name = 'Jeremiah Pendergrass'
);

-- Query 2: Delete Jeremiah Pendergrass's record from the Guest table
DELETE FROM Guest
WHERE Name = 'Jeremiah Pendergrass';

-- Query 3: List of reservations that end in July 2023
SELECT G.Name, R.RoomNumber, R.StartDate, R.EndDate
FROM Reservation AS R
JOIN Guest AS G ON R.GuestID = G.GuestID
WHERE YEAR(R.EndDate) = 2023 AND MONTH(R.EndDate) = 7;

-- Query 4: List of reservations for rooms with a jacuzzi
SELECT r.ReservationID, r.RoomNumber, g.Name AS GuestName, r.StartDate, r.EndDate
FROM Reservation r
JOIN Room_Amenities ra ON r.RoomNumber = ra.RoomNumber
JOIN Amenities a ON ra.RoomAmenityID = a.RoomAmenityID
JOIN Guest g ON r.GuestID = g.GuestID
WHERE a.Amenity = 'Jacuzzi';

-- Query 5: List of rooms reserved for a specific guest
SELECT G.Name, R.RoomNumber, R.StartDate, R.Adults + R.Children AS TotalPeople
FROM Reservation AS R
JOIN Guest AS G ON R.GuestID = G.GuestID
WHERE G.Name = 'Sofia Bilal';

-- Query 6: List of rooms, reservation ID, and per-room cost for each reservation
SELECT R.ReservationID, R.RoomNumber, R.TotalRoomCost / (R.Adults + R.Children) AS PerRoomCost
FROM Reservation AS R;

-- Query 7: List of rooms reserved with capacity of three or more in April 2023
SELECT G.Name, R.RoomNumber, R.StartDate
FROM Reservation AS R
JOIN Guest AS G ON R.GuestID = G.GuestID
JOIN Room AS RM ON R.RoomNumber = RM.RoomNumber
WHERE RM.MaximumOccupancy >= 3 AND YEAR(R.StartDate) = 2023 AND MONTH(R.StartDate) = 4;

-- Query 8: List of guest names and number of reservations per guest
SELECT G.Name, COUNT(R.ReservationID) AS NumberOfReservations
FROM Guest AS G
LEFT JOIN Reservation AS R ON G.GuestID = R.GuestID
GROUP BY G.Name
ORDER BY NumberOfReservations DESC, G.Name;

-- Query 9: Display guest info based on phone number
SELECT Name, Address, Phone
FROM Guest
WHERE Phone = '(446) 351-6860';
