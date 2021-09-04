
CREATE TABLE tbl_employee(
				EmployeeID INT PRIMARY KEY IDENTITY(1, 1),
				EmployeeName VARCHAR(20),
				EmployeeAddress VARCHAR(20),
				EmployeeCountry VARCHAR(20)
			);

-- rename col name
EXEC sp_RENAME 'tbl_employee.EmployeeCountry' , 'EmployeeCountryName', 'COLUMN'


CREATE TABLE tbl_AddressList(
				AddressID  INT PRIMARY KEY IDENTITY(1, 1),
				EmployeeID INT,
				EmployeeAddress VARCHAR(20)
				);

SELECT * FROM tbl_employee
SELECT * FROM tbl_AddressList


SELECT * FROM tbl_employee INNER JOIN tbl_AddressList ON tbl_AddressList.EmployeeID = tbl_employee.EmployeeID

UPDATE tbl_employee
SET tbl_employee.EmployeeAddress = tbl_AddressList.EmployeeAddress 
FROM tbl_employee INNER JOIN tbl_AddressList ON tbl_AddressList.EmployeeID = tbl_employee.EmployeeID

SELECT * FROM tbl_employee INNER JOIN tbl_AddressList ON tbl_employee.EmployeeID = tbl_AddressList.EmployeeID
--
UPDATE tbl_employee SET EmployeeAddress = NULL

-- using sub query  - update with select 


-- If the subquery could not find any matched row, the updated value will be changed to NULL.
-- If the subquery finds more than one matched row, the update query will return an error

UPDATE tbl_employee
SET tbl_employee.EmployeeAddress = (SELECT tbl_AddressList.EmployeeAddress FROM tbl_AddressList WHERE tbl_AddressList.EmployeeID = tbl_employee.EmployeeID)			
