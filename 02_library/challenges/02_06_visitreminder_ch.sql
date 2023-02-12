-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT  P.FirstName, P.Email , 
count(L.BookID) as countLoan
from Loans L left join Books B on L.BookID = B.BookID
JOIN Patrons P on P.PatronID = L.PatronID
GROUP by  p.FirstName, p.Email
ORDER by countLoan ASC limit 5;

SELECT COUNT(Loans.LoanID) AS LoanCount, Patrons.FirstName, Patrons.Email
FROM Loans
JOIN Patrons ON Loans.PatronID=Patrons.PatronID
GROUP BY Loans.PatronID
ORDER BY LoanCount ASC
LIMIT 5;

