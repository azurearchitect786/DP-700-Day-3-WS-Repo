CREATE TABLE [SnowflakeModel].[DimGeography] (

	[GeographyKey] int NOT NULL, 
	[City] varchar(30) NULL, 
	[StateProvinceCode] varchar(3) NULL, 
	[StateProvinceName] varchar(50) NULL, 
	[CountryRegionCode] varchar(3) NULL, 
	[EnglishCountryRegionName] varchar(50) NULL, 
	[SpanishCountryRegionName] varchar(50) NULL, 
	[FrenchCountryRegionName] varchar(50) NULL, 
	[PostalCode] varchar(15) NULL, 
	[SalesTerritoryKey] int NULL, 
	[IpAddressLocator] varchar(15) NULL
);


GO
ALTER TABLE [SnowflakeModel].[DimGeography] ADD CONSTRAINT PK_DimGeography_GeographyKey primary key NONCLUSTERED ([GeographyKey]);