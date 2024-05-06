-- create schema + copy data
SELECT * INTO #tbl_country_copy FROM tbl_country 

-- create schema only
SELECT StateID, StateIsActive INTO #tbl_state_copy FROM tbl_state WHERE 1 = 2 

