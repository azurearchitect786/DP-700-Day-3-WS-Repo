CREATE TABLE [SnowflakeModel].[DimProduct] (

	[ProductKey] int NOT NULL, 
	[ProductAlternateKey] varchar(25) NULL, 
	[ProductSubcategoryKey] int NULL, 
	[WeightUnitMeasureCode] char(3) NULL, 
	[SizeUnitMeasureCode] char(3) NULL, 
	[EnglishProductName] varchar(50) NOT NULL, 
	[SpanishProductName] varchar(50) NOT NULL, 
	[FrenchProductName] varchar(50) NOT NULL, 
	[StandardCost] float NULL, 
	[FinishedGoodsFlag] bit NOT NULL, 
	[Color] varchar(15) NOT NULL, 
	[SafetyStockLevel] int NULL, 
	[ReorderPoint] int NULL, 
	[ListPrice] float NULL, 
	[Size] varchar(50) NULL, 
	[SizeRange] varchar(50) NULL, 
	[Weight] float NULL, 
	[DaysToManufacture] int NULL, 
	[ProductLine] char(2) NULL, 
	[DealerPrice] float NULL, 
	[Class] char(2) NULL, 
	[Style] char(2) NULL, 
	[ModelName] varchar(50) NULL, 
	[EnglishDescription] varchar(400) NULL, 
	[FrenchDescription] varchar(400) NULL, 
	[ChineseDescription] varchar(400) NULL, 
	[ArabicDescription] varchar(400) NULL, 
	[HebrewDescription] varchar(400) NULL, 
	[ThaiDescription] varchar(400) NULL, 
	[GermanDescription] varchar(400) NULL, 
	[JapaneseDescription] varchar(400) NULL, 
	[TurkishDescription] varchar(400) NULL, 
	[StartDate] date NULL, 
	[EndDate] date NULL, 
	[Status] varchar(7) NULL
);


GO
ALTER TABLE [SnowflakeModel].[DimProduct] ADD CONSTRAINT AK_DimProduct_ProductAlternateKey_StartDate unique NONCLUSTERED ([ProductAlternateKey], [StartDate]);
GO
ALTER TABLE [SnowflakeModel].[DimProduct] ADD CONSTRAINT PK_DimProduct_ProductKey primary key NONCLUSTERED ([ProductKey]);
GO
ALTER TABLE [SnowflakeModel].[DimProduct] ADD CONSTRAINT FK_DimProduct_DimProductSubcategory FOREIGN KEY ([ProductSubcategoryKey]) REFERENCES [SnowflakeModel].[DimProductSubcategory]([ProductSubcategoryKey]);