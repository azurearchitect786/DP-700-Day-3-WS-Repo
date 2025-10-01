CREATE TABLE [Sales].[Dim_Customer] (

	[CustomerID] varchar(255) NOT NULL, 
	[CustomerName] varchar(255) NOT NULL, 
	[EmailAddress] varchar(255) NOT NULL
);


GO
ALTER TABLE [Sales].[Dim_Customer] ADD CONSTRAINT PK_CustomerID primary key NONCLUSTERED ([CustomerID]);