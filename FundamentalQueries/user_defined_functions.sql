

ALTER FUNCTION AddTwoNumbers(@X INT, @Y INT)
RETURNS INT 
AS
BEGIN
	RETURN @X + @Y
END

SELECT dbo.AddTwoNumbers(3,5)

-- function can be used with select and where clause, but proc cannot 


-- inline table valued function
CREATE FUNCTION GetEmployeesByGender(@Gender INT)
RETURNS TABLE
AS
BEGIN
END


