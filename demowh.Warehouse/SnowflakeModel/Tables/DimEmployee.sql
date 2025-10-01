CREATE TABLE [SnowflakeModel].[DimEmployee] (

	[EmployeeKey] int NOT NULL, 
	[ParentEmployeeKey] int NULL, 
	[EmployeeNationalIDAlternateKey] varchar(15) NULL, 
	[ParentEmployeeNationalIDAlternateKey] varchar(15) NULL, 
	[SalesTerritoryKey] int NULL, 
	[FirstName] varchar(50) NOT NULL, 
	[LastName] varchar(50) NOT NULL, 
	[MiddleName] varchar(50) NULL, 
	[NameStyle] bit NOT NULL, 
	[Title] varchar(50) NULL, 
	[HireDate] date NULL, 
	[BirthDate] date NULL, 
	[LoginID] varchar(256) NULL, 
	[EmailAddress] varchar(50) NULL, 
	[Phone] varchar(25) NULL, 
	[MaritalStatus] char(1) NULL, 
	[EmergencyContactName] varchar(50) NULL, 
	[EmergencyContactPhone] varchar(25) NULL, 
	[SalariedFlag] bit NULL, 
	[Gender] char(1) NULL, 
	[PayFrequency] int NULL, 
	[BaseRate] float NULL, 
	[VacationHours] int NULL, 
	[SickLeaveHours] int NULL, 
	[CurrentFlag] bit NOT NULL, 
	[SalesPersonFlag] bit NOT NULL, 
	[DepartmentName] varchar(50) NULL, 
	[StartDate] date NULL, 
	[EndDate] date NULL, 
	[Status] varchar(50) NULL
);


GO
ALTER TABLE [SnowflakeModel].[DimEmployee] ADD CONSTRAINT PK_DimEmployee_EmployeeKey primary key NONCLUSTERED ([EmployeeKey]);