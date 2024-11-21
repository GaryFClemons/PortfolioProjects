--USING A WINDOW FUNCTION: What are the total sales of a product over time?

--The procedure utilizes the @ProductName parameter to specify a product. 
--@ProductName MUST BE SPECIFIED on execution.
--The Procedure first uses a CTE to join together the Product, SalesOrderHeader, and SalesOrderDetail tables.
--Next, 2 window functions are used within the outer select statement so that we can see all orders AND we
--can see running totals. Because the PARTITION BY clause is the same for both of the window functions, 
--I used an alias 'w' to save code/time.

CREATE PROCEDURE RollingProductSales @ProductName nvarchar(50)
AS 
BEGIN
	SET NOCOUNT ON;

	WITH CTE_ProductOrders AS (
		SELECT SOD.SalesOrderID, 
		PP.ProductID, 
		PP.Name, 
		SOD.OrderQty, 
		SOD.LineTotal, 
		CAST(SOH.OrderDate AS DATE) AS OrderDate
		FROM Sales.SalesOrderDetail SOD
			INNER JOIN Production.Product PP ON PP.ProductID = SOD.ProductID
			INNER JOIN Sales.SalesOrderHeader SOH ON SOH.SalesOrderID = SOD.SalesOrderID
	)
	SELECT Name,
	OrderDate,
	SUM(PO.OrderQty) OVER w AS TotalUnitsSold,
	SUM(PO.LineTotal) OVER w AS TotalProductSales
	FROM CTE_ProductOrders PO
	WHERE PO.Name = @ProductName
	WINDOW w AS (PARTITION BY PO.ProductID ORDER BY PO.OrderDate)
END

EXEC RollingProductSales @ProductName = 'Mountain-200 Black, 38'
