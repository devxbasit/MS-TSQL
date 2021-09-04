
CREATE TABLE #tbl_employee (EmployeeID INT IDENTITY(1,1), EmployeeName VARCHAR(20))
GO

INSERT INTO #tbl_employee VALUES('Basit')
GO

INSERT INTO #tbl_employee VALUES('Moshin')
GO

SELECT SCOPE_IDENTITY()
GO

INSERT INTO #tbl_employee VALUES(3, 'Gazala')
-- error -  IDENTITY_INSERT is OFF, sturn it on

SET IDENTITY_INSERT #tbl_employee ON
INSERT INTO #tbl_employee(EmployeeID, EmployeeName) VALUES(3, 'Gazala')
-- This way we can fill gaps in ID column

-- Delete all records and reset Identity
DELETE FROM #tbl_employee
DBCC CHECKIDENT(#tbl_employee, RESEED, 0)
GO