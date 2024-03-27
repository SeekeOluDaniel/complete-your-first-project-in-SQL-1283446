-- Determine top customer state
SELECT 
State,
COUNT(DISTINCT Orders.OrderID) as TotalOrders
FROM Orders
LEFT OUTER JOIN OrderItem
ON Orders.OrderID = OrderItem.OrderID
LEFT OUTER JOIN Customer
ON Orders.CustomerID = Customer.CustomerID
GROUP BY State
ORDER BY TotalOrders DESC
LIMIT 3