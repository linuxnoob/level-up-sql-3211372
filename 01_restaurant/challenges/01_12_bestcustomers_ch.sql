-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT c.FirstName, c.LastName , count(od.OrderID) as mostcount from OrdersDishes OD join Orders O on O.OrderID = OD.OrderID
join Customers C on c.CustomerID = O.CustomerID join Dishes d 
on D.DishID = OD.DishID
GROUP by c.FirstName, c.LastName
Order BY mostcount desc LIMIT 10;

