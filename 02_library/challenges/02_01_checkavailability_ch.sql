-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT * from Books where Title = 'Dracula'

SELECT((SELECT COUNT(Books.Title) 
    FROM Books 
    WHERE Books.Title = 'Dracula') -
(SELECT count(L.BookID) as countBook
from Loans L left join Books B on L.BookID = B.BookID
where b.Title = 'Dracula' and L.ReturnedDate is NULL))
as AvailableBook;



