CREATE TABLE [SnowflakeModel].[DimProductCategory] (

	[ProductCategoryKey] int NOT NULL, 
	[ProductCategoryAlternateKey] int NULL, 
	[EnglishProductCategoryName] varchar(50) NOT NULL, 
	[SpanishProductCategoryName] varchar(50) NOT NULL, 
	[FrenchProductCategoryName] varchar(50) NOT NULL
);


GO
ALTER TABLE [SnowflakeModel].[DimProductCategory] ADD CONSTRAINT AK_DimProductCategory_ProductCategoryAlternateKey unique NONCLUSTERED ([ProductCategoryAlternateKey]);
GO
ALTER TABLE [SnowflakeModel].[DimProductCategory] ADD CONSTRAINT PK_DimProductCategory_ProductCategoryKey primary key NONCLUSTERED ([ProductCategoryKey]);