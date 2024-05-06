-- if schema already exists
-- copy data only
-- insert into target-table select from source table
INSERT INTO #tbl_country_copy(CountryName, CountryIsActive, CountryDeleted) SELECT CountryName, CountryIsActive, CountryDeleted FROM tbl_country
