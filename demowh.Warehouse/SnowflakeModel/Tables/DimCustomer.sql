CREATE TABLE [SnowflakeModel].[DimCustomer] (

	[CustomerKey] int NOT NULL, 
	[GeographyKey] int NULL, 
	[CustomerAlternateKey] varchar(15) NOT NULL, 
	[Title] varchar(8) NULL, 
	[FirstName] varchar(50) NULL, 
	[MiddleName] varchar(50) NULL, 
	[LastName] varchar(50) NULL, 
	[NameStyle] bit NULL, 
	[BirthDate] date NULL, 
	[MaritalStatus] char(1) NULL, 
	[Suffix] varchar(10) NULL, 
	[Gender] varchar(1) NULL, 
	[EmailAddress] varchar(50) NULL, 
	[YearlyIncome] decimal(18,0) NULL, 
	[TotalChildren] smallint NULL, 
	[NumberChildrenAtHome] smallint NULL, 
	[EnglishEducation] varchar(40) NULL, 
	[SpanishEducation] varchar(40) NULL, 
	[FrenchEducation] varchar(40) NULL, 
	[EnglishOccupation] varchar(100) NULL, 
	[SpanishOccupation] varchar(100) NULL, 
	[FrenchOccupation] varchar(100) NULL, 
	[HouseOwnerFlag] char(1) NULL, 
	[NumberCarsOwned] smallint NULL, 
	[AddressLine1] varchar(120) NULL, 
	[AddressLine2] varchar(120) NULL, 
	[Phone] varchar(20) NULL, 
	[DateFirstPurchase] date NULL, 
	[CommuteDistance] varchar(15) NULL
);


GO
ALTER TABLE [SnowflakeModel].[DimCustomer] ADD CONSTRAINT IX_DimCustomer_CustomerAlternateKey unique NONCLUSTERED ([CustomerAlternateKey]);
GO
ALTER TABLE [SnowflakeModel].[DimCustomer] ADD CONSTRAINT PK_DimCustomer_CustomerKey primary key NONCLUSTERED ([CustomerKey]);
GO
ALTER TABLE [SnowflakeModel].[DimCustomer] ADD CONSTRAINT FK_DimCustomer_DimGeography FOREIGN KEY ([GeographyKey]) REFERENCES [SnowflakeModel].[DimGeography]([GeographyKey]);