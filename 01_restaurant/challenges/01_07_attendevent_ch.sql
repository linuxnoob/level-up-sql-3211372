-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

SELECT CustomerID from Customers 
WHERE Email ='atapley2j@kinetecoinc.com';

SELECT * from reservations LIMIT 5;

INSERT into AnniversaryAttendees (CustomerID, PartySize)
VALUES((SELECT CustomerID from Customers 
WHERE Email ='atapley2j@kinetecoinc.com'),4);


SELECT * from AnniversaryAttendees;
