--Визначаєм кількість замовлень кожного клієнта
SELECT c.FirstName + ' ' + c.LastName AS CustomerName, COUNT(o.OrderID) AS OrderCount FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName

--Визначаєм середню вартість кожного замовлення
SELECT AVG(TotalAmount) AS AverageOrderCost
FROM orders;

--Визначаєм найбільш популярний товар
SELECT TOP 1 p.ProductName, SUM(od.Quantity) AS TotalSold FROM Products p
JOIN order_details od ON od.productID =  p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSold DESC

--Кількість замовлень за кожний місяць
SELECT YEAR(OrderDate) AS OrderYear, 
	   MONTH(OrderDate) AS OrderMonth, 
	   COUNT(*) AS OrderCount
FROM orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY OrderYear, OrderMonth;

--Кількість замовлень за кожний місяць
SELECT YEAR(OrderDate) AS OrderYear, 
	   MONTH(OrderDate) AS OrderMonth, 
	   AVG(TotalAmount) AS AverageSum
FROM orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY OrderYear, OrderMonth DESC

--Загальна вартість замовлень за кожний місяць
SELECT YEAR(OrderDate) AS OrderYear, 
	   MONTH(OrderDate) AS OrderMonth,
	   SUM(TotalAmount) AS TotalSum
FROM orders 
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY OrderYear, OrderMonth DESC

--Середній чек кожного клієнта
SELECT * FROM orders
SELECT c.CustomerID, c.FirstName + ' ' + c.LastName AS CustomerName,  AVG(o.TotalAmount) AS AverageCheck FROM customers c 
JOIN Orders o ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID , c.FirstName, c.LastName

--Кількість замовлень за кожний день тижня
SELECT DATEPART(WEEKDAY, OrderDate) AS Weekday,
       COUNT(*) AS OrderCount
FROM orders
GROUP BY DATEPART(WEEKDAY, OrderDate)
ORDER BY Weekday;

--Загальна вартість замовлень кожного покупця
SELECT c.FirstName, c.LastName, SUM(o.TotalAmount) AS TotalOrderAmount FROM Customers c
JOIN Orders o  ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName
