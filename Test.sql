CREATE TABLE Department (
    DepartId INT PRIMARY KEY,
    DepartName VARCHAR(50) NOT NULL,
    Description VARCHAR(100) NOT NULL
);
GO

INSERT INTO Department VALUES ('1','IT','Cong nghe thong tin')
INSERT INTO Department VALUES ('2','Doctor','Y Te')

SELECT * FROM Department

DROP TABLE Department


CREATE TABLE Employee (
    EmpCode CHAR(6) PRIMARY KEY,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    Birthday SMALLDATETIME NOT NULL,
    Gender BIT DEFAULT 1,
    Address VARCHAR(100),
    DepartID INT,
    Salary MONEY,
    CONSTRAINT FK_Department FOREIGN KEY (DepartID) REFERENCES Department(DepartId)
);
Go

INSERT INTO Employee VALUES ('001', 'Pham', 'Dung', '2005-10-24', '1', 'Thanh Tri', '1', '1000');
INSERT INTO Employee VALUES ('002', 'Duc', 'Anh', '2005-01-31', '1', 'Dong Anh', '2', '2000');
INSERT INTO Employee VALUES ('003', 'Hai', 'Dang', '2005-10-03', '0', 'Dong Anh', '2', '3000');

SELECT * FROM Employee

DROP TABLE Employee