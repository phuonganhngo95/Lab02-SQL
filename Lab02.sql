-- 1.
/*USE master
GO

CREATE DATABASE Lab02
GO*/

USE Lab02
GO

-- 3.
/*DECLARE @Name NVARCHAR(50)
SET @Name = N'Phương Anh'
PRINT @Name*/

-- 4.
/*DECLARE @Age int
SET @Age = 19
PRINT @Age*/

-- 5.
CREATE TABLE Employee (
	ID int PRIMARY KEY,
	FullName nvarchar(35),
	Gender bit,
	BirthDay datetime,
	Address nvarchar(Max),
	Email varchar(20),
	Salary float,
)

-- 6.
ALTER TABLE Employee
ADD Phone varchar(20)
GO

-- 7.
INSERT INTO Employee (ID, FullName, Gender, BirthDay, Address, Email, Salary, Phone) VALUES
(2, N'Trần Văn A', 1, '1990-01-15', N'Hà Nội', 'trana@gmail.com', 25000, '0123456789'),
(3, N'Nguyễn Thị B', 0, '1985-03-22', N'Hồ Chí Minh', 'nguyenthiB@gmail.com', 30000, '0987654321'),
(4, N'Lê Văn C', 1, '1992-07-30', N'Đà Nẵng', 'levanc@gmail.com', 22000, '0912345678'),
(5, N'Phạm Thị D', 0, '1988-11-05', N'Hải Phòng', 'phamthid@gmail.com', 27000, '0934567890'),
(6, N'Ngô Văn E', 1, '1995-09-12', N'Cần Thơ', 'ngovanE@gmail.com', 23000, '0945678901');

-- 8.
SELECT * FROM Employee
GO

-- 9.
SELECT * FROM Employee WHERE Salary > 2000000
GO

-- 10.
SELECT * FROM Employee WHERE MONTH(BirthDay) = MONTH(GETDATE())
GO

-- 11.
SELECT ID, FullName, DATEDIFF(YEAR, BirthDay, GETDATE()) AS AGE,
	FORMAT(Birthday, 'dd/mm/yyyy') AS Birthday
FROM Employee
GO

-- 12.
SELECT * FROM Employee WHERE Address LIKE '%Hà Nội%'
GO

-- 13.
UPDATE Employee SET FullName = 'John' WHERE ID = 1
GO
-- 14.
DELETE FROM Employee WHERE DATEDIFF(YEAR, BirthDay, GETDATE()) > 50
GO

-- 15.
SELECT * INTO GetOlder FROM Employee WHERE DATEDIFF(YEAR, BirthDay, GETDATE()) > 50
GO

-- 16.
SELECT COUNT(*) AS TotalEmployee FROM Employee
GO
