EXEC sp_helpindex tbl_country

CREATE CLUSTERED INDEX IXC_tbl_employee_EmployeeID ON tbl_employee(EmployeeID)

DROP INDEX PK__tbl_Empl__7AD04FF150DDA8DF ON tbl_employee

CREATE CLUSTERED INDEX IX_tbl_employee_EmployeeID ON tbl_employee(EmployeeID)

CREATE CLUSTERED INDEX IX_tbl_employee_EmployeeName ON tbl_employee(EmployeeName)
-- error - Cannot create more than one clustered index

SELECT * FROM tbl_employee

CREATE NONCLUSTERED INDEX IX_tbl_employee_EmployeeID ON tbl_employee(EmployeeID)
CREATE NONCLUSTERED INDEX IX_tbl_employee_EmployeeName ON tbl_employee(EmployeeName)
CREATE NONCLUSTERED INDEX IX_tbl_employee_EmployeeName2 ON tbl_employee(EmployeeName)


ALTER TABLE tbl_employee ADD PRIMARY KEY(EmployeeID)
ALTER TABLE tbl_employee ADD UNIQUE (EmployeeName)

CREATE CLUSTERED INDEX IX_tbl_employee_EmployeeID ON tbl_employee(EmployeeID)
ALTER TABLE tbl_employee ADD PRIMARY KEY(EmployeeID)


CREATE UNIQUE NONCLUSTERED INDEX IX_tbl_employee_EmployeeName ON tbl_employee(EmployeeName)

