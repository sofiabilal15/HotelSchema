USE SofiaHotelDB;


INSERT INTO Room (RoomNumber, Type, ADAAccessible, StandardOccupancy, MaximumOccupancy, BasePrice, ExtraPerson)
VALUES
    
    (201, 'Double', 'No', 2, 4, 199.99, 10),
    (202, 'Double', 'Yes', 2, 4, 174.99, 10),
    (203, 'Double', 'No', 2, 4, 199.99, 10),
    (204, 'Double', 'Yes', 2, 4, 174.99, 10),
    (205, 'Single', 'No', 2, 2, 174.99, NULL),
    (206, 'Single', 'Yes', 2, 2, 149.99, NULL),
    (207, 'Single', 'No', 2, 2, 174.99, NULL),
    (208, 'Single', 'Yes', 2, 2, 149.99, NULL),
    (301, 'Double', 'No', 2, 4, 199.99, 10),
    (302, 'Double', 'Yes', 2, 4, 174.99, 10),
    (303, 'Double', 'No', 2, 4, 199.99, 10),
    (304, 'Double', 'Yes', 2, 4, 174.99, 10),
    (305, 'Single', 'No', 2, 2, 174.99, NULL),
    (306, 'Single', 'Yes', 2, 2, 149.99, NULL),
    (307, 'Single', 'No', 2, 2, 174.99, NULL),
    (308, 'Single', 'Yes', 2, 2, 149.99, NULL),
    (401, 'Suite', 'Yes', 3, 8, 399.99, 20),
    (402, 'Suite', 'Yes', 3, 8, 399.99, 20);
    

INSERT INTO Guest (GuestID, Name, Address, City, State, Zip, Phone)
VALUES
    (1, 'Sofia Bilal', '27 Bennetts Castle', 'London', 'NY', '07417', '(44) 465-0148'),
    (2, 'Mack Simmer', '379 Old Shore Street', 'Council Bluffs', 'IA', '51501', '(291) 553-0508'),
    (3, 'Bettyann Seery', '750 Wintergreen Dr.', 'Wasilla', 'AK', '99654', '(478) 277-9632'),
    (4, 'Duane Cullison', '9662 Foxrun Lane', 'Harlingen', 'TX', '78552', '(308) 494-0198'),
    (5, 'Karie Yang', '9378 W. Augusta Ave.', 'West Deptford', 'NJ', '08096', '(214) 730-0298'),
    (6, 'Aurore Lipton', '762 Wild Rose Street', 'Saginaw', 'MI', '48601', '(377) 507-0974'),
    (7, 'Zachery Luechtefeld', '7 Poplar Dr.', 'Arvada', 'CO', '80003', '(814) 485-2615'),
    (8, 'Jeremiah Pendergrass', '70 Oakwood St.', 'Zion', 'IL', '60099', '(279) 491-0960'),
    (9, 'Walter Holaway', '7556 Arrowhead St.', 'Cumberland', 'RI', '02864', '(446) 396-6785'),
    (10, 'Wilfred Vise', '77 West Surrey Street', 'Oswego', 'NY', '13126', '(834) 727-1001'),
    (11, 'Maritza Tilton', '939 Linda Rd.', 'Burke', 'VA', '22015', '(446) 351-6860'),
    (12, 'Joleen Tison', '87 Queen St.', 'Drexel Hill', 'PA', '19026', '(231) 893-2755');
    


INSERT INTO Reservation (ReservationID, RoomNumber, GuestID, Adults, Children, StartDate, EndDate, TotalRoomCost)
VALUES
    (1, 308, 2, 1, 0, '2023-02-02', '2023-02-04', 299.98),
    (2, 203, 3, 2, 1, '2023-02-05', '2023-02-10', 999.95),
    (3, 305, 4, 2, 0, '2023-02-22', '2023-02-24', 349.98),
    (4, 201, 5, 2, 2, '2023-03-06', '2023-03-07', 199.99),
    (5, 307, 1, 1, 1, '2023-03-17', '2023-03-20', 524.97),
    (6, 302, 6, 3, 0, '2023-03-18', '2023-03-23', 924.95),
    (7, 202, 7, 2, 2, '2023-03-29', '2023-03-31', 349.98),
    (8, 304, 8, 2, 0, '2023-03-31', '2023-04-05', 874.95),
    (9, 301, 9, 1, 0, '2023-04-09', '2023-04-13', 799.96),
    (10, 207, 10, 1, 1, '2023-04-23', '2023-04-24', 174.99),
    (11, 401, 11, 2, 4, '2023-05-30', '2023-06-02', 1199.97),
    (12, 206, 12, 2, 0, '2023-06-10', '2023-06-14', 599.96),
    (13, 208, 12, 1, 0, '2023-06-10', '2023-06-14', 599.96),
    (14, 304, 6, 3, 0, '2023-06-17', '2023-06-18', 184.99),
    (15, 205, 1, 2, 0, '2023-06-28', '2023-07-02', 699.96),
    (16, 204, 9, 3, 1, '2023-07-13', '2023-07-14', 184.99),
    (17, 401, 10, 4, 2, '2023-07-18', '2023-07-21', 1259.97),
    (18, 303, 3, 2, 1, '2023-07-28', '2023-07-29', 199.99),
    (19, 305, 3, 1, 0, '2023-08-30', '2023-09-01', 349.98),
    (20, 208, 2, 2, 0, '2023-09-16', '2023-09-17', 149.99),
    (21, 203, 5, 2, 2, '2023-09-13', '2023-09-15', 399.98),
    (22, 401, 4, 2, 2, '2023-11-22', '2023-11-25', 1199.97),
    (23, 206, 2, 2, 0, '2023-11-22', '2023-11-25', 449.97),
    (24, 301, 2, 2, 2, '2023-11-22', '2023-11-25', 599.97),
    (25, 302, 11, 2, 0, '2023-12-24', '2023-12-28', 699.96);
    


INSERT INTO Room_Amenities (RoomAmenityID, RoomNumber, Amenities)
VALUES
    (1, 201, 'Microwave, Jacuzzi'),
    (2, 202, 'Refrigerator'),
    (3, 203, 'Microwave, Jacuzzi'),
    (4, 204, 'Refrigerator'),
    (5, 205, 'Microwave, Refrigerator, Jacuzzi'),
    (6, 206, 'Microwave, Refrigerator'),
    (7, 207, 'Microwave, Refrigerator, Jacuzzi'),
    (8, 208, 'Microwave, Refrigerator'),
    (9, 301, 'Microwave, Jacuzzi'),
    (10, 302, 'Refrigerator'),
    (11, 303, 'Microwave, Jacuzzi'),
    (12, 304, 'Refrigerator'),
    (13, 305, 'Microwave, Refrigerator, Jacuzzi'),
    (14, 306, 'Microwave, Refrigerator'),
    (15, 307, 'Microwave, Refrigerator, Jacuzzi'),
    (16, 308, 'Microwave, Refrigerator'),
    (17, 401, 'Microwave, Refrigerator, Oven'),
    (18, 402, 'Microwave, Refrigerator, Oven');

