--Whats the rolling 7 day average of daily sales?

--This Procedure uses multiple CTE's to display the date, the total daily sales for that day, 
--and the rolling 7 day average for the past 7 days on any given day.
--The moving average calculation is created by selecting from CTE_TotalDailySales
--and averaging the DailySales field using a window function. RECEDING and CURRENT ROW 
--is used to specify the calculation of the last 7 rows (last 7 days). The RowNumber 
--field is created so it can be used later in the next CTE. CASE statement is used with 
--the RowNumber field to specify that the first 7 rows should be null.

CREATE PROCEDURE RollingAvg7Day 
AS 
BEGIN
	WITH CTE_TotalDailySales AS 
	(
		SELECT CAST(OrderDate AS Date) AS OrderDate,
		SUM(SubTotal) AS DailySales
		FROM Sales.SalesOrderHeader
		GROUP BY OrderDate
	),
	CTE_RollingAvgCalculation AS 
	(
		SELECT OrderDate,
		DailySales,
		AVG(DailySales) OVER (ORDER BY OrderDate ROWS BETWEEN 7 PRECEDING AND CURRENT ROW) AS SalesMovingAvg7,
		ROW_NUMBER() OVER (ORDER BY OrderDate) AS RowNumber
		FROM CTE_TotalDailySales
	),
	CTE_RollingAvg7Day AS
	(
		SELECT OrderDate AS Date, DailySales,
		CASE WHEN RowNumber >= 7 THEN SalesMovingAvg7 ELSE NULL
		END AS SalesMovingAvg7
		FROM CTE_RollingAvgCalculation
	)
	SELECT * FROM CTE_RollingAvg7Day
END

exec RollingAvg7Day