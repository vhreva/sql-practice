CREATE TABLE Customers (
	CustomerID INT IDENTITY PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Email VARCHAR(120)
)

CREATE TABLE Products (
	ProductID INT IDENTITY PRIMARY KEY,
	ProductName VARCHAR,
	Price MONEY
)

CREATE TABLE Orders (
	OrderID INT IDENTITY PRIMARY KEY,
	CustomerID INT,
	OrderDate DATETIME,
	TotalAmount DECIMAL(10, 2),
	Status VARCHAR(32),
	FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID)
)

CREATE TABLE Order_details (
	OrderDetailID INT IDENTITY PRIMARY KEY,
	OrderID INT,
	ProductID INT,
	Quantity INT,
	UnitPrice DECIMAL(10, 2), 
	FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
	FOREIGN KEY (ProductID) REFERENCES Products(ProductID) 
)

CREATE TABLE Order_status (
	OrderStatusID  INT IDENTITY PRIMARY KEY,
	Status VARCHAR(50) NOT NULL
)
