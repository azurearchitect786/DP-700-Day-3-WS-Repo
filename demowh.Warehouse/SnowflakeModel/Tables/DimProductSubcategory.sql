CREATE TABLE [SnowflakeModel].[DimProductSubcategory] (

	[ProductSubcategoryKey] int NOT NULL, 
	[ProductSubcategoryAlternateKey] int NULL, 
	[EnglishProductSubcategoryName] varchar(50) NOT NULL, 
	[SpanishProductSubcategoryName] varchar(50) NOT NULL, 
	[FrenchProductSubcategoryName] varchar(50) NOT NULL, 
	[ProductCategoryKey] int NULL
);


GO
ALTER TABLE [SnowflakeModel].[DimProductSubcategory] ADD CONSTRAINT AK_DimProductSubcategory_ProductSubcategoryAlternateKey unique NONCLUSTERED ([ProductSubcategoryAlternateKey]);
GO
ALTER TABLE [SnowflakeModel].[DimProductSubcategory] ADD CONSTRAINT PK_DimProductSubcategory_ProductSubcategoryKey primary key NONCLUSTERED ([ProductSubcategoryKey]);
GO
ALTER TABLE [SnowflakeModel].[DimProductSubcategory] ADD CONSTRAINT FK_DimProductSubcategory_DimProductCategory FOREIGN KEY ([ProductCategoryKey]) REFERENCES [SnowflakeModel].[DimProductCategory]([ProductCategoryKey]);