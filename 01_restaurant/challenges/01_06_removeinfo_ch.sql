-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT * from Reservations limit 5;


SELECT r.CustomerID, c.FirstName, c.LastName,r.Date , r.ReservationID from reservations r join 
customers c on c.customerid = r.customerId
where c.FirstName ='Norby'

DELETE FROM Reservations WHERE 
ReservationID =2000 


