
CREATE VIEW vw_IndianEmployees
AS 
SELECT * FROM tbl_employee WHERE EmployeeCountryName = 'India'


SELECT * FROM vw_IndianEmployees
SELECT * FROM tbl_employee

-- view can update data in original table
UPDATE vw_IndianEmployees SET EmployeeName = 'ABC' WHERE EmployeeName = 'Basit'

-- view can update data only if
-- view is based on one table, includes primary key, no field made of aggregate function, no Distinct/group by / sub queruies 

