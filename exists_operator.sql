SELECT * FROM tbl_city WHERE 1 = 2
SELECT * FROM tbl_city WHERE 1 = 1

SELECT * FROM tbl_country
SELECT * FROM tbl_state
SELECT * FROM tbl_city

SELECT * FROM tbl_state WHERE EXISTS(SELECT CountryID FROM tbl_country WHERE tbl_state.StateCountryID = tbl_country.CountryID);

IF EXISTS(SELECT EmployeeID FROM tbl_employee WHERE EmployeeID = 1)
	BEGIN
		PRINT 'User Exists';
	END
ELSE
	BEGIN 
		PRINT 'User Does Not Exists';
	END

