-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT B.Title, P.FirstName, P.LastName, P.Email, 
L.DueDate, L.ReturnedDate
from Loans L left join Books B on L.BookID = B.BookID
JOIN Patrons P on P.PatronID = L.PatronID
where L.DueDate = '2022-07-13'
and L.ReturnedDate is  null;

