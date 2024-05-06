
SELECT StateID, StateName, CASE StateCountryID 
							WHEN 1 THEN 'India'
							WHEN 2 THEN 'Pakistan'
							ELSE 'OTHER'
						  END AS CountryName, StateIsActive from tbl_state

						  
SELECT StateID, StateName, CASE  
							WHEN StateCountryID = 1 THEN 'India'
							WHEN StateCountryID = 2 THEN 'Pakistan'
							ELSE 'OTHER'
						  END AS CountryName, StateIsActive from tbl_state


SELECT StateID, StateName, CASE  
							WHEN StateCountryID = 1 THEN 'India'
							WHEN StateID > 5 THEN 'Pakistan'
							WHEN StateIsActive = 0 THEN 'InActive Country'
							ELSE 'OTHER'
						  END AS CountryName, StateIsActive from tbl_state

						  
SELECT * FROM tbl_city ORDER BY CASE 
									WHEN CityName IS NULL THEN CityStateID
									ELSE CityID
								END;

