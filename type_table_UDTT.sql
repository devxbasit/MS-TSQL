--CREATE TYPE tvp_country AS TABLE (
--	CountryName VARCHAR(30),
--	CountryIsActive BIT,
--	CountryDeleted BIT
--)
--GO

ALTER PROC sp_AddCountries
@Countries tvp_country READONLY
AS
BEGIN
	INSERT INTO tbl_country(CountryName, CountryIsActive, CountryDeleted) SELECT CountryName, CountryIsActive, CountryDeleted FROM @Countries
END
GO

DECLARE @Countries tvp_country
INSERT INTO @Countries(CountryName, CountryIsActive, CountryDeleted) VALUES ('China', 1, 0), ('Russia', 1, 0)
EXEC sp_AddCountries @Countries = @Countries
GO

SELECT * FROM tbl_country
GO





--CREATE TYPE ut_customer_additional_email AS TABLE (
--	CustomerEmail VARCHAR(100)
--)
--GO

--DROP PROC sp_AddCustomerAdditionalEmails
--DROP TYPE ut_customer_additional_email

ALTER PROC sp_AddCustomerAdditionalEmails
@CustomerID INT,
@CustomerAdditionalEmails  ut_customer_additional_email READONLY
AS
BEGIN
	INSERT INTO tbl_customer_additional_email(CustomerID, CustomerEmail, CustomerEmailIsDeleted) SELECT @CustomerID, CustomerEmail, 0 FROM @CustomerAdditionalEmails
	RETURN @CustomerID;
END
GO


DECLARE @CustomerAdditionalEmails ut_customer_additional_email
INSERT INTO @CustomerAdditionalEmails(CustomerEmail) VALUES ('test1@gmail.com'), ('test2@gmail.com')
INSERT INTO tbl_customer_additional_email(CustomerID, CustomerEmail, CustomerEmailIsDeleted) SELECT 1, CustomerEmail, 0 FROM @CustomerAdditionalEmails
GO


SELECT * FROM tbl_customer_additional_email
GO





------------------------  table variable
DECLARE @ActiveCountries AS TABLE(
	CountryName VARCHAR(50),
	CountryIsActive BIT
)
INSERT INTO @ActiveCountries(CountryName, CountryIsActive) SELECT CountryName, CountryIsActive FROM tbl_country WHERE CountryIsActive = 1
SELECT * FROM @ActiveCountries
GO
