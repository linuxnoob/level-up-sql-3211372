-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT * from Books WHERE Published BETWEEN 1890 and 1999
and BookID not in 
(SELECT BookID from Loans WHERE ReturnedDate is null);

