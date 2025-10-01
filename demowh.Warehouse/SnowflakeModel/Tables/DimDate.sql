CREATE TABLE [SnowflakeModel].[DimDate] (

	[DateKey] int NOT NULL, 
	[DateAltKey] datetime2(6) NOT NULL, 
	[CalendarYear] int NOT NULL, 
	[CalendarQuarter] int NOT NULL, 
	[MonthOfYear] int NOT NULL, 
	[MonthName] varchar(15) NOT NULL, 
	[DayOfMonth] int NOT NULL, 
	[DayOfWeek] int NOT NULL, 
	[DayName] varchar(15) NOT NULL, 
	[FiscalYear] int NOT NULL, 
	[FiscalQuarter] int NOT NULL
);


GO
ALTER TABLE [SnowflakeModel].[DimDate] ADD CONSTRAINT AK_DimDate_DateAltKey unique NONCLUSTERED ([DateAltKey]);
GO
ALTER TABLE [SnowflakeModel].[DimDate] ADD CONSTRAINT PK_DimDate_DateKey primary key NONCLUSTERED ([DateKey]);