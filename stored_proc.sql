
ALTER PROC sp_GetEmployeeCount
@ID INT,
@EmployeeCount INT OUT
AS
BEGIN
		SELECT @EmployeeCount = COUNT(EmployeeID) FROM tbl_employee
END
GO

DECLARE @TotalEmployees INT
EXEC sp_GetEmployeeCount @ID = 1, @EmployeeCount = @TotalEmployees OUT
PRINT CONCAT('Total Employeees: ', @TotalEmployees)
GO
