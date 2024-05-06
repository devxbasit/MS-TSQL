
-- tables remains in ram, lock free writes - maintain logs to recover

DECLARE @Counter INT
SET @Counter = 1

WHILE (@Counter <= 300000) 
BEGIN
	INSERT INTO tbl_country(CountryName, CountryIsActive, CountryDeleted) VALUES ('ABC', 1, 0) 
END






