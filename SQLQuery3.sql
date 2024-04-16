--�������� ������� ��������� ������� �볺���
SELECT c.FirstName + ' ' + c.LastName AS CustomerName, COUNT(o.OrderID) AS OrderCount FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName

--�������� ������� ������� ������� ����������
SELECT AVG(TotalAmount) AS AverageOrderCost
FROM orders;

--�������� ������� ���������� �����
SELECT TOP 1 p.ProductName, SUM(od.Quantity) AS TotalSold FROM Products p
JOIN order_details od ON od.productID =  p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSold DESC

--ʳ������ ��������� �� ������ �����
SELECT YEAR(OrderDate) AS OrderYear, 
	   MONTH(OrderDate) AS OrderMonth, 
	   COUNT(*) AS OrderCount
FROM orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY OrderYear, OrderMonth;

--ʳ������ ��������� �� ������ �����
SELECT YEAR(OrderDate) AS OrderYear, 
	   MONTH(OrderDate) AS OrderMonth, 
	   AVG(TotalAmount) AS AverageSum
FROM orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY OrderYear, OrderMonth DESC

--�������� ������� ��������� �� ������ �����
SELECT YEAR(OrderDate) AS OrderYear, 
	   MONTH(OrderDate) AS OrderMonth,
	   SUM(TotalAmount) AS TotalSum
FROM orders 
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY OrderYear, OrderMonth DESC

--������� ��� ������� �볺���
SELECT * FROM orders
SELECT c.CustomerID, c.FirstName + ' ' + c.LastName AS CustomerName,  AVG(o.TotalAmount) AS AverageCheck FROM customers c 
JOIN Orders o ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID , c.FirstName, c.LastName

--ʳ������ ��������� �� ������ ���� �����
SELECT DATEPART(WEEKDAY, OrderDate) AS Weekday,
       COUNT(*) AS OrderCount
FROM orders
GROUP BY DATEPART(WEEKDAY, OrderDate)
ORDER BY Weekday;

--�������� ������� ��������� ������� �������
SELECT c.FirstName, c.LastName, SUM(o.TotalAmount) AS TotalOrderAmount FROM Customers c
JOIN Orders o  ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName
