CREATE TABLE [SnowflakeModel].[DimReseller] (

	[ResellerKey] int NOT NULL, 
	[GeographyKey] int NULL, 
	[ResellerAlternateKey] varchar(15) NULL, 
	[Phone] varchar(25) NULL, 
	[BusinessType] varchar(20) NOT NULL, 
	[ResellerName] varchar(50) NOT NULL, 
	[NumberEmployees] int NULL, 
	[OrderFrequency] char(1) NULL, 
	[OrderMonth] int NULL, 
	[FirstOrderYear] int NULL, 
	[LastOrderYear] int NULL, 
	[ProductLine] varchar(50) NULL, 
	[AddressLine1] varchar(60) NULL, 
	[AddressLine2] varchar(60) NULL, 
	[AnnualSales] float NULL, 
	[BankName] varchar(50) NULL, 
	[MinPaymentType] int NULL, 
	[MinPaymentAmount] float NULL, 
	[AnnualRevenue] float NULL, 
	[YearOpened] int NULL
);


GO
ALTER TABLE [SnowflakeModel].[DimReseller] ADD CONSTRAINT AK_DimReseller_ResellerAlternateKey unique NONCLUSTERED ([ResellerAlternateKey]);
GO
ALTER TABLE [SnowflakeModel].[DimReseller] ADD CONSTRAINT PK_DimReseller_ResellerKey primary key NONCLUSTERED ([ResellerKey]);
GO
ALTER TABLE [SnowflakeModel].[DimReseller] ADD CONSTRAINT FK_DimReseller_DimGeography FOREIGN KEY ([GeographyKey]) REFERENCES [SnowflakeModel].[DimGeography]([GeographyKey]);