-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT Published, count(Title) as countTitle from books
GROUP by Published
ORDER by Published DESC


SELECT  B.Title,  
count(L.BookID) as countBook
from Loans L left join Books B on L.BookID = B.BookID
JOIN Patrons P on P.PatronID = L.PatronID
GROUP by  B.Title
ORDER by countBook DESC limit 5;