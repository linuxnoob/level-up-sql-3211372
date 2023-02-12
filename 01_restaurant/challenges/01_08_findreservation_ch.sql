-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.


SELECT c.firstname,c.LastName, r.* from 
Reservations r join customers C on c.customerid = r.customerid
WHERE c.LastName like 'st%' and r.partySize =4

