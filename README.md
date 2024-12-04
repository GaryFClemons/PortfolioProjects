# PortfolioProjects
Public repository containing projects that showcase my skills as an analyst

# SQL 
In the SQL folder there are stored procedures that I wrote to demonstrate using CASE, CAST, Temporary Tables, JOIN's,  Aggregate Functions, Subqueries, Common Table Expressions, Window Functions, and Parameters to query the Microsoft AdventureWorks Sample Database.

Microsoft's AdventureWorks Sample database can be found here: https://github.com/microsoft/sql-server-samples/tree/master/samples/databases/adventure-works/oltp-install-script

I executed the install script from the Repository listed above on SQL Server Management Studio to restore the sample database
to my machine. Every SQL file is accompanied by a PNG Screenshot of the data resulting from the query.

# PowerBIProject
The purpose of this project was to show a high level overview of U.S. Government contracts awarded for fiscal year 2025. 
Because I was unable to make my PowerBI visualization publicly accessible, i exported it here in PDF format.

1. First, I downloaded a csv file containing government contracts and awards data from: https://www.usaspending.gov/download_center/award_data_archive

2. Next I wrote an SQL query in order to create a table in Microsoft SQL Server:
Create_GovernmentContracts_Table.sql 

4. Then I Wrote a python script in order to pull the data from the CSV file and insert it into my Microsoft SQL Server database table:
GovernmentContractstCSVtoSQL.ipynb

5. Next I wrote another SQL query in order to pull only the data I needed for this report from the SQL database:
GovernmentContractsProjectQuery.sql

6. I then copied those results (with headers) into a new csv file and loaded that file into PowerBI.
Here is a PDF version of the resulting report I created:
PowerBIProject/USGovernmentContractsVisual.pdf

# Python
The Python folder contains a webscraper that scrapes all past winning numbers from the MegaMillions lottery website:
https://www.texaslottery.com/export/sites/lottery/Games/Mega_Millions/Winning_Numbers/print.html_2013354932.html
WinningNumbersScraper.ipynb






