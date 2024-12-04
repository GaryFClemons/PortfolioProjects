--CREATING A TEMPORARY TABLE: Display employees and add an extra field that puts them into different age groups

--The procedure first checks INFORMATION_SCHEMA.TABLES for an existing #Employee_AgeGroup temp Table.
--If the table exists already then everything from the table is selected. If the table does not exist
--then the temp table is created. Selected fields from the HumanResources.Employee table are inserted
--into the new #Employee_AgeGroup temp table. CASE WHEN is used to create a field named AgeGroup that
--groups together employees based on their age/birthdate. 

USE AdventureWorks

CREATE PROCEDURE EmployeeAgeGroup AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS 
	(
		SELECT * FROM INFORMATION_SCHEMA.TABLES
		WHERE TABLE_NAME = '#Employee_AgeGroup'
	)
		BEGIN
			SELECT * FROM #Employee_AgeGroup
		END
	ELSE
		BEGIN
			SELECT HRE.BusinessEntityID,
			HRE.JobTitle,
			HRE.HireDate,
			HRE.BirthDate AS BirthDate,
			CASE WHEN BirthDate < '11/05/1969' THEN 'Older Than 55'
			WHEN BirthDate BETWEEN '11/05/1969' AND '11/05/1984' THEN '40-55'
			WHEN BirthDate BETWEEN '11/06/1984' AND '11/05/1999' THEN '25-39'
			WHEN BirthDate BETWEEN '11/06/1999' AND '11/05/2006' THEN '18-24'
			END AS AgeGroup
			INTO #Employee_AgeGroup
			FROM HumanResources.Employee HRE

			SELECT * FROM #Employee_AgeGroup
		END
END 

EXEC EmployeeAgeGroup