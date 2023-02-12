-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.



SELECT distinct c.FirstName, c.LastName, 
(SELECT name from Dishes where DishID = c.FavoriteDish) 
as favdish , c.FavoriteDish, d.Name, d.DishID
from OrdersDishes OD join Orders O on O.OrderID = OD.OrderID
join Customers C on c.CustomerID = O.CustomerID join Dishes d 
on D.DishID = OD.DishID
WHERE  c.FirstName='Cleo' and LastName = 'Goldwater'
or d.Name ='Quinoa Salmon Salad'
GROUP by c.FavoriteDish, FirstName, LastName, d.Name, d.DishID;


UPDATE Customers SET FavoriteDish =9 WHERE 
 FirstName='Cleo' and LastName = 'Goldwater' 
and FavoriteDish =14

SELECT * from Customers WHERE  FirstName='Cleo' and LastName = 'Goldwater' 
and FavoriteDish =9


