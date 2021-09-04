-- common table expression
-- temporary result set;
-- can be used with select/insert/update/delete that immediately follows the CTE
-- always start cte with terminator 

-- alternative to sub-queries

SELECT * FROM tbl_state;
SELECT * FROM tbl_country;

;WITH StateCTE(CountryID, StateName)
AS
(
	SELECT CountryID,StateName from tbl_country INNER JOIN tbl_state ON tbl_state.StateCountryID = tbl_country.CountryID		
)
SELECT * FROM StateCTE WHERE CountryID = 1

SELECT * FROM tbl_city 

;WITH cte_active_states(StateID, StateName, StateCountryID) AS 
(
	SELECT StateID, StateName, StateCountryID FROM tbl_state WHERE StateIsActive = 1
),
cte_active_indian_states(StateID, StateName) AS
(
	SELECT StateID, StateName FROM cte_active_states WHERE StateCountryID = 1
)
SELECT * FROM cte_active_indian_states


