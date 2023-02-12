-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT Name, Price, Type  from dishes 
order by Price limit 10;

SELECT Type, Name, Price, Description 
FROM Dishes 
WHERE Type = 'Appetizer' OR Type = 'Beverage' 
ORDER BY Type;


SELECT Name, Price, Type  from dishes
WHERE Type != 'Beverages'  
order by Price LIMIT 10;

