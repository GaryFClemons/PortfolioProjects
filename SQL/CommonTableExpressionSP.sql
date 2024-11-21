--USE A CTE: What are the all-time average sales for each month?

--The procedure utilizes the @Month parameter to specify month of the year.
--If @Month not specified on execution, then January through December will be displayed.
--The procedure uses the DATENAME function to pull the name of the month and the year from
--the OrderDate field in the SalesOrderHeader table. The SUM function is used to total the sales for each month
--The AVG function is used to average the total sales for each month

CREATE PROCEDURE AvgMonthlySales @Month Nvarchar(20) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	WITH CTE_AvgSalesByMonth AS (
	SELECT DateName(YY,OrderDate) AS Year, 
	DateName(MM, OrderDate) AS Month, 
	SUM(SubTotal) AS TotalMonthlySales
	FROM Sales.SalesOrderHeader
	GROUP BY DateName(YY,OrderDate), DateName(MM, OrderDate)
	)
	SELECT Month, 
	AVG(TotalMonthlySales) AS AvgMonthlySales
	FROM CTE_AvgSalesByMonth
	WHERE Month = @Month OR @Month IS NULL
	GROUP BY Month
	ORDER BY 2 DESC

END

EXEC AvgMonthlySales
	
