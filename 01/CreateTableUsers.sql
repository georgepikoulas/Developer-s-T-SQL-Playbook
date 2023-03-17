 Create table Users(
     Id INT PRIMARY key IDENTITY (1,1),
     Email nvarchar(50),
	 CreatedAt datetime,
	 First nvarchar(25),
	 Last nvarchar(25),
	 Bio text
);

