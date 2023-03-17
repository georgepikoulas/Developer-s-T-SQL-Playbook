 --Use BigMachine;
 
 --drop table Users;
 
 Create table Users(
     Id INT PRIMARY key IDENTITY (1,1),
     Email nvarchar(255) not null unique,
	 MoneySpent decimal(10,2) default 0,
	 CreatedAt datetime not null default getdate(),
	 First nvarchar(50),
	 Last nvarchar(50),
	 Bio nvarchar(max)
);




create table Role (
    Id INT PRIMARY key IDENTITY (1,1),
    Name varchar(50)
);

create TABLE UserRole(
    UserId INTEGER references Users(Id) on delete cascade,
    RoleId INTEGER  references  Role(Id) on delete cascade,
    PRIMARY KEY (UserId , RoleId)
);