
SELECT StateID, StateName INTO #tbl_indian_states FROM tbl_state WHERE StateCountryID = 1
SELECT * FROM #tbl_indian_states

--Temporary Tables and Stored Procedures
-- one exception - When you are creating stored procedures, you can access temporary tables in other connections as well.
-- https://codingsight.com/introduction-to-temporary-tables-in-sql-server/

CREATE TABLE  #tbl_Temp1(ID INT)
CREATE TABLE ##tbl_Temp1(ID INT)

INSERT INTO #tbl_Temp1(ID) VALUES (1);
SELECT * FROM #tbl_Temp1

INSERT INTO ##tbl_Temp1(ID) VALUES (1);
SELECT * FROM ##tbl_Temp1


ALTER PROC sp_TempTableDemo

AS

BEGIN
	
	CREATE TABLE #tbl_ProcTempLocalTable(ID INT)
	CREATE TABLE ##tbl_ProcTempGlobalTable(ID INT)

	INSERT INTO #tbl_ProcTempLocalTable(ID) VALUES (1);
	INSERT INTO ##tbl_ProcTempGlobalTable(ID) VALUES (1);
	
END

EXEC sp_TempTableDemo

SELECT * FROM #tbl_ProcTempLocalTable -- error does not exists
SELECT * FROM ##tbl_ProcTempGlobalTable -- still exists
