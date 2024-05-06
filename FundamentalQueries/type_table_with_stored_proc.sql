-- now it is possible to send multiple rows of data to a proc or func without creating temp table 

DROP TYPE  UT_Employee

CREATE TYPE UT_Employee AS TABLE (			
			EmployeeName VARCHAR(20),
			EmployeeAddress VARCHAR(20),
			EmployeeCountryName VARCHAR(20),
			EmployeeEmail NVARCHAR(20)
)

SELECT * FROM tbl_employee

CREATE PROC sp_InsertEmployees(@EmployeesDetail [UT_Employee] READONLY)
AS
BEGIN

	INSERT INTO tbl_employee(EmployeeName, EmployeeAddress, EmployeeCountryName, EmployeeEmail) SELECT * FROM @EmployeesDetail

END


DECLARE @EmployeesDetail AS [UT_Employee]
INSERT INTO @EmployeesDetail SELECT 'Danish', 'Natipora', 'India', 'd@d.com' UNION ALL SELECT 'Numaan', 'Solina', 'India', 'n@n.com'  
EXEC sp_InsertEmployees @EmployeesDetail

SELECT * FROM tbl_employee


