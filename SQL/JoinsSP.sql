--USING CAST: Display every sale along with the date.

--Here I use INNER JOIN within a SELECT statement which joins the SalesOrderDetail, Product, and SalesOrderHeader tables.
--The resulting dataset contains all product sales with identifying information for the order and product
--as well as quantity ordered, line total and the corresponding date
--I use the CAST function to convert the OrderDate field from a DATETIME to a DATE data type to get rid of the timestamp

USE AdventureWorks
	
CREATE PROCEDURE SalesProductOrders AS 
BEGIN
	SET NOCOUNT ON

	SELECT SOD.SalesOrderID, 
	PP.ProductID, 
	PP.Name, 
	SOD.OrderQty, 
	SOD.LineTotal, 
	CAST(SOH.OrderDate AS DATE) AS OrderDate
	FROM Sales.SalesOrderDetail SOD
		INNER JOIN Production.Product PP ON PP.ProductID = SOD.ProductID
		INNER JOIN Sales.SalesOrderHeader SOH ON SOH.SalesOrderID = SOD.SalesOrderID;
END	



