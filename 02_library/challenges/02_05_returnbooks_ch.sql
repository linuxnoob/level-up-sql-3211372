-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424


UPDATE Loans set ReturnedDate = '2022-07-05'
WHERE BookID = 
(SELECT BookID FROM Books WHERE Barcode ='6435968624')
and ReturnedDate is NULL;

UPDATE Loans set ReturnedDate = '2022-07-05'
WHERE BookID = 
(SELECT BookID FROM Books WHERE Barcode ='5677520613')
and ReturnedDate is NULL;

UPDATE Loans set ReturnedDate = '2022-07-05'
WHERE BookID = 
(SELECT BookID FROM Books WHERE Barcode ='8730298424')
and ReturnedDate is NULL;

SELECT B.Title, P.FirstName, P.LastName, P.Email, 
L.DueDate, L.ReturnedDate
from Loans L left join Books B on L.BookID = B.BookID
JOIN Patrons P on P.PatronID = L.PatronID
where L.ReturnedDate = '2022-07-05';
