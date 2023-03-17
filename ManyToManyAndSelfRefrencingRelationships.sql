-- Querying a MANY TO MANY relationship
SELECT * FROM dbo.Users 
INNER JOIN dbo.UserRole ON UserID = dbo.UserRole.UserID
INNER	JOIN dbo.Roles ON Roles.Id = RoleId


--Querying a sekf referncing table with a sbb query
SELECT FirstName , LastName,
(SELECT bosses.FirstName + ' ' + bosses.LastName FROM dbo.Employee bosses  
	WHERE Employee.ReportsTo = bosses.EmployeeId
) AS boss
FROM dbo.Employee 


--Query self refernceing tyable with JOIN to get the boss and workers
SELECT workers.FirstName, workers.LastName ,
 bosses.FirstName + ' '  + bosses.LastName AS boss

FROM dbo.Employee workers 
LEFT	JOIN dbo.Employee bosses 
ON workers.ReportsTo = bosses.EmployeeId	

--INSERT INTO dbo.Users
--(
--    Email
--)
--VALUES
--('test@test.com' -- Email - varchar(255)
--    )

--	INSERT INTO dbo.Roles
--	(
--	    Named
--	)
--	VALUES
--	('Administrator' -- Named - varchar(50)
--	    )

-- INSERT INTO dbo.UserRole
-- (
--     UserID,
--     RoleId
-- )
-- VALUES
-- (	1, -- UserID - int
--     1  -- RoleId - int
--     )

--CREATE TABLE Users (
--Id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
--Email VARCHAR(255) NOT NULL UNIQUE
--);

--CREATE TABLE Roles (
--Id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
--Named VARCHAR(50 ) NOT NULL UNIQUE
--)


--CREATE TABLE UserRole  (
--UserID INT REFERENCES Users(Id) ON DELETE CASCADE ,
--RoleId INT REFERENCES dbo.Roles(Id) ON DELETE CASCADE,
--PRIMARY KEY(UserID,RoleId)
--)