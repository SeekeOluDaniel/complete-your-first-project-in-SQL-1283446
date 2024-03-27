-- Find top customers
SELECT
FirstName,
LastName,
COUNT(DISTINCT Orders.OrderID) AS TotalOrders,
SUM(Quantity) AS TotalQuantity,
SUM(TotalDue) AS Total$Amount
FROM Orders
LEFT OUTER JOIN OrderItem
ON Orders.OrderID = OrderItem.OrderID
LEFT OUTER JOIN Customer
ON Orders.CustomerID = Customer.CustomerID
GROUP BY Customer.CustomerID
ORDER BY Total$Amount DESC
