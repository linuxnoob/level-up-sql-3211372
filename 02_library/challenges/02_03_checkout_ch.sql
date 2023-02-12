-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.


SELECT * from Books where Title = 'The Picture of Dorian Gray'
or Title ='Great Expectations';
select * from Patrons 
where FirstName = 'Jack' and LastName = 'Vaan';

SELECT * from Loans LIMIT 2;


INSERT into Loans (BookID, PatronID, LoanDate, DueDate)
VALUES (
(SELECT BookID from Books WHERE Barcode ='2855934983'),
50,'2022-08-25', '2022-09-08'),(
(SELECT BookID from Books WHERE Barcode ='4043822646'),
50,'2022-08-25', '2022-09-08');

SELECT * FROM Loans where PatronID =50

