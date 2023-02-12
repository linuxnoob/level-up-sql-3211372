-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

SELECT * from customers where 
firstname = 'Taylor'

UPDATE customers set Address ='74 Pine St., New York, NY',
City ='New York' , State ='NY'
WHERE CustomerID =26

