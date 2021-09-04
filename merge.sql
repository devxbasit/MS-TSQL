
CREATE TABLE tbl_Products(ProductID INT PRIMARY KEY IDENTITY(1, 1), ProductName VARCHAR(10))
CREATE TABLE tbl_ProductsBackUp(ProductID INT PRIMARY KEY IDENTITY(1, 1), ProductName VARCHAR(10))


-- allows to insert, update, delete in one query  - it Sync data


INSERT INTO tbl_employee(EmployeeName) OUTPUT inserted.EmployeeID, inserted.EmployeeName VALUES('ritik'),('sdfsdf'),('sdfwerwr')

SELECT SCOPE_IDENTITY()

INSERT INTO tbl_Products(ProductName) VALUES('A');
INSERT INTO tbl_Products(ProductName) VALUES('B');


MERGE INTO tbl_ProductsBackUp tt
USING tbl_Products AS pr
ON tt.ProductID = pr.ProductID

	WHEN MATCHED THEN UPDATE SET 
		tt.ProductName = pr.ProductName

	WHEN NOT MATCHED BY target THEN
		INSERT(ProductName) VALUES(pr.ProductName)
	
	WHEN NOT MATCHED BY source THEN 
		DELETE;


SELECT * FROM tbl_Products;
SELECT * FROM tbl_ProductsBackUp

