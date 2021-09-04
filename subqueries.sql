SELECT * FROM tbl_city

SELECT * FROM tbl_city WHERE CityStateID IN (SELECT StateID FROM tbl_state WHERE StateIsActive = 1)
