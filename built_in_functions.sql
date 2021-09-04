SELECT ASCII('a')
SELECT ASCII('abcde')
SELECT CHAR(97)
SELECT LTRIM('   hello');
SELECT RTRIM('hello    ');
SELECT RTRIM(LTRIM('   Hello   '))
SELECT REVERSE('Hello')
SELECT UPPER('Hello')
SELECT LOWER('Hello')
SELECT LEN('Hello')
SELECT CONCAT('Hello', 'World')

SELECT value AS emails FROM STRING_SPLIT('a@a.com,b@b.com,c@c.com', ',' )
SELECT CONCAT(EmployeeID, '-',EmployeeName) From tbl_employee

SELECT * FROM tbl_employee
ALTER TABLE tbl_employee ADD EmployeeEmail NVARCHAR(20)

SELECT LEFT('basit', 3)
SELECT RIGHT('basit', 3)

SELECT CHARINDEX('@', 'abc@gmail.com')
SELECT CHARINDEX('@', 'abc@gmail.com', 5)

SELECT RIGHT(EmployeeEmail, 6) FROM tbl_employee

SELECT EmployeeEmail, RIGHT(EmployeeEmail, LEN(EmployeeEmail) - CHARINDEX('@', EmployeeEmail)) AS EmployeeDomai FROM tbl_employee

SELECT  SUBSTRING('basit@gmail.com', 7, 5)
SELECT EmployeeEmail, SUBSTRING(EmployeeEmail, CHARINDEX('@', EmployeeEmail) + 1, CHARINDEX('.', EmployeeEmail) - CHARINDEX('@', EmployeeEmail) - 1) AS Domain FROM tbl_employee

SELECT CURRENT_TIMESTAMP -- ANSI SQL function / Recommended
SELECT GETDATE() -- T-SQL function

SELECT SYSDATETIME() -- higher precision

SELECT MONTH('2021/05/31')
SELECT YEAR('2021/05/31')
SELECT DAY('2021/05/31')
