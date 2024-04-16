INSERT INTO Customers VALUES 
	('John', 'Doe', 'johndoe@example.com'),
	('Jane', 'Smith', 'janesmith@example.com'),
	('Michael', 'Johnson', 'michaeljohnson@example.com'),
	('Emily', 'Williams', 'emilywilliams@example.com'),
	('David', 'Brown', 'davidbrown@example.com'),
	('Emma', 'Jones', 'emmajones@example.com'),
	('James', 'Davis', 'jamesdavis@example.com'),
	('Sarah', 'Miller', 'sarahmiller@example.com'),
	('Matthew', 'Wilson', 'matthewwilson@example.com'),
	('Olivia', 'Taylor', 'oliviataylor@example.com')

INSERT INTO Products VALUES 
	('Laptop', 1150.99),
	('Smartphone', 950.70),
	('Tablet', 349),
	('Headphones', 210),
	('Smartwatch', 199.99),
	('Bluetooth Speaker', 55),
	('Wireless Mouse', 30),
	('External Hard Drive', 89.90),
	('Printer', 155.50),
	('Desk Chair', 112)

INSERT INTO Orders VALUES 
	( 3, '2024-04-10 14:30:00.000', 349.00, 'NEW', 1),
	( 2, '2024-04-07 14:30:00.000', 210.00, 'NEW', 1),
	( 4, '2024-04-09 17:30:00.000', 199.99, 'NEW', 1),
	( 2, '2024-04-10 14:00:00.000', 1150.99, 'NEW', 1),
	( 3, '2024-04-14 18:00:00.000', 199.99, 'Processing', 2),
	( 7, '2024-03-30 20:10:00.000', 1901.40, 'NEW', 1)



INSERT INTO Order_status VALUES 
	('New'),
	('Processing'),
	('Shipped'),
	('Delivered')

INSERT INTO Order_details VALUES
	(1, 4, 1, 349.00),
	(3, 5, 1, 210.00),
	(4, 6, 1, 199.99),
	(5, 2, 1, 1150.99),
	(6, 6, 1, 199.99)
