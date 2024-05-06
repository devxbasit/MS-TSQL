DELETE FROM tbl_employee WHERE EmployeeID = 10

DELETE FROM tbl_employee WHERE EmployeeID IN (SELECT EmployeeID FROM tbl_AddressList WHERE EmployeeAddress = 'solina')

SELECT * FROM tbl_employee
SELECT * FROM tbl_country


DELETE tbl_employee
FROM tbl_employee INNER JOIN tbl_country ON tbl_employee.EmployeeCountryName = tbl_country.CountryName WHERE tbl_country.CountryName = 'Pakistan'
