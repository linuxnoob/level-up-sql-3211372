-- Add a customer to the restaurant's loyalty program.

-- Use the following information to create a record:
-- Anna Smith (asmith@samoca.org)
-- 479 Lapis Dr., Memphis, TN
-- Phone: (555) 555-1212; Birthday: July 21, 1973

INSERT into Customers (firstName, lastName,
email, address,city, state, phone, birthday) VALUES
('Anna', 'Smith','asmith@samoca.org','479 Lapis Dr., Memphis, TN',
'Memphis','TN','555-1212','1973-07-21')

SELECT * from Customers where FirstName = 'Anna'