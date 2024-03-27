-- Determine what products sold together
SELECT
o1.ProductID as ProductID1,
o2.ProductID as ProductID2,
COUNT(*) as Frequency
FROM OrderItem as o1
JOIN OrderItem as o2
ON o1.OrderID = o2.OrderID
WHERE o1.ProductID < o2.ProductID
GROUP BY ProductID1, ProductID2
ORDER BY Frequency DESC
LIMIT 10
