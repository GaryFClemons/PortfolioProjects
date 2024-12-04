--USING A SUBQUERY: What are the hourly rates of employees?

--This Procedure utilizes the @HireDate, @JobTitle, and @Gender paramaters to find 
--the hourly pay rates of employees based on those criteria. If paramaters not specified 
--on execution then procedure will show pay rates of all employees. 
--This Procedure joins the EmployeePayHistory, Person, and Employee tables using 2 seperate
--joins in the same SELECT statement. MAX(Rate) is used because there are multiple records
--for each employee in the EmployeePayHistory table, and we only want to see their most recent 
--pay rate. The WHERE statement filters results using a subquery that selects results from The 
--Employee table based on the @HireDate, @JobTitle, @Gender parameters.

USE AdventureWorks
	
CREATE PROCEDURE EmployeePayRates 
	@HireDate DATE = NULL,
	@JobTitle nvarchar(50) = NULL,
	@Gender nchar(1) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	SELECT EPH.BusinessEntityID,
	PP.FirstName,
	PP.LastName,
	E.JobTitle,
	MAX(EPH.Rate) AS HourlyRate
	FROM HumanResources.EmployeePayHistory EPH
		INNER JOIN Person.Person PP ON PP.BusinessEntityID = EPH.BusinessEntityID
		INNER JOIN HumanResources.Employee E ON e.BusinessEntityID = EPH.BusinessEntityID
	WHERE EPH.BusinessEntityID IN (
		SELECT E.BusinessEntityID
		FROM HumanResources.Employee E
		WHERE (E.HireDate = @HireDate OR @HireDate IS NULL)
		AND (E.JobTitle = @JobTitle OR @JobTitle IS NULL)
		AND (E.Gender = @Gender OR @Gender IS NULL)
	)
	GROUP BY EPH.BusinessEntityID, FirstName, LastName, JobTitle
END

EXEC EmployeePayRates 

