CREATE TABLE [SnowflakeModel].[FactResellerSales] (

	[ProductKey] int NOT NULL, 
	[OrderDateKey] int NOT NULL, 
	[DueDateKey] int NOT NULL, 
	[ShipDateKey] int NOT NULL, 
	[ResellerKey] int NOT NULL, 
	[EmployeeKey] int NOT NULL, 
	[PromotionKey] int NOT NULL, 
	[CurrencyKey] int NOT NULL, 
	[SalesTerritoryKey] int NOT NULL, 
	[SalesOrderNumber] varchar(20) NOT NULL, 
	[SalesOrderLineNumber] int NOT NULL, 
	[RevisionNumber] int NULL, 
	[OrderQuantity] int NULL, 
	[UnitPrice] float NULL, 
	[ExtendedAmount] float NULL, 
	[UnitPriceDiscountPct] float NULL, 
	[DiscountAmount] float NULL, 
	[ProductStandardCost] float NULL, 
	[TotalProductCost] float NULL, 
	[SalesAmount] float NULL, 
	[TaxAmt] float NULL, 
	[Freight] float NULL, 
	[CarrierTrackingNumber] varchar(25) NULL, 
	[CustomerPONumber] varchar(25) NULL, 
	[OrderDate] date NULL, 
	[DueDate] date NULL, 
	[ShipDate] date NULL
);


GO
ALTER TABLE [SnowflakeModel].[FactResellerSales] ADD CONSTRAINT PK_FactResellerSales_SalesOrderNumber_SalesOrderLineNumber primary key NONCLUSTERED ([SalesOrderNumber], [SalesOrderLineNumber]);
GO
ALTER TABLE [SnowflakeModel].[FactResellerSales] ADD CONSTRAINT FK_FactResellerSales_DimDate1 FOREIGN KEY ([OrderDateKey]) REFERENCES [SnowflakeModel].[DimDate]([DateKey]);
GO
ALTER TABLE [SnowflakeModel].[FactResellerSales] ADD CONSTRAINT FK_FactResellerSales_DimDate2 FOREIGN KEY ([ShipDateKey]) REFERENCES [SnowflakeModel].[DimDate]([DateKey]);
GO
ALTER TABLE [SnowflakeModel].[FactResellerSales] ADD CONSTRAINT FK_FactResellerSales_DimDate3 FOREIGN KEY ([DueDateKey]) REFERENCES [SnowflakeModel].[DimDate]([DateKey]);
GO
ALTER TABLE [SnowflakeModel].[FactResellerSales] ADD CONSTRAINT FK_FactResellerSales_DimEmployee FOREIGN KEY ([EmployeeKey]) REFERENCES [SnowflakeModel].[DimEmployee]([EmployeeKey]);
GO
ALTER TABLE [SnowflakeModel].[FactResellerSales] ADD CONSTRAINT FK_FactResellerSales_DimProduct FOREIGN KEY ([ProductKey]) REFERENCES [SnowflakeModel].[DimProduct]([ProductKey]);
GO
ALTER TABLE [SnowflakeModel].[FactResellerSales] ADD CONSTRAINT FK_FactResellerSales_DimReseller FOREIGN KEY ([ResellerKey]) REFERENCES [SnowflakeModel].[DimReseller]([ResellerKey]);