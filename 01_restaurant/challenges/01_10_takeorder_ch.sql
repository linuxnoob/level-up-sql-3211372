-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.


SELECT CustomerID, FirstName, LastName, Phone 
FROM Customers
WHERE Address = '6939 Elka Place' AND LastName = 'Hundey';
SELECT * from Orders LIMIT 5;
SELECT * from OrdersDishes limit 5;
SELECT DishID from Dishes 
WHERE Name ='House Salad' 
or Name ='Mini Cheeseburgers'
or Name ='Tropical Blue Smoothie';


INSERT into Orders (CustomerID, OrderDate) VALUES
(70,'2022-09-20 14:00:00')

SELECT OrderID from Orders where CustomerID =70 
and OrderDate ='2022-09-20 14:00:00'

INSERT INTO OrdersDishes (OrderID, DishID) VALUES
((SELECT OrderID from Orders where CustomerID =70 
and OrderDate ='2022-09-20 14:00:00'), (SELECT DishID from Dishes 
WHERE Name ='House Salad')),
((SELECT OrderID from Orders where CustomerID =70 
and OrderDate ='2022-09-20 14:00:00'), (SELECT DishID from Dishes 
WHERE Name ='Mini Cheeseburgers')),
((SELECT OrderID from Orders where CustomerID =70 
and OrderDate ='2022-09-20 14:00:00'), (SELECT DishID from Dishes 
WHERE Name ='Tropical Blue Smoothie'));

SELECT c.FirstName, c.LastName, o.OrderDate, sum(d.Price) as Price from OrdersDishes OD join Orders O on O.OrderID = OD.OrderID
join Customers C on c.CustomerID = O.CustomerID join Dishes d 
on D.DishID = OD.DishID
WHERE c.LastName = 'Hundey' and o.OrderDate ='2022-09-20 14:00:00';



