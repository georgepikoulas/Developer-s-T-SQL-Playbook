 Use BigMachine;
 
 drop table users;
 
 Create table Users(
     Id INT PRIMARY key IDENTITY (1,1),
     Email nvarchar(255) not null unique,
	 MoneySpent decimal(10,2) default 0,
	 CreatedAt datetime not null default getdate(),
	 First nvarchar(50),
	 Last nvarchar(50),
	 Bio nvarchar(max)
);

