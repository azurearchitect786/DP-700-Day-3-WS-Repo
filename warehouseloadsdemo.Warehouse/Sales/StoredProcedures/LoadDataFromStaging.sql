CREATE   PROCEDURE Sales.LoadDataFromStaging
 AS
 BEGIN
 	-- Load data into the Customer dimension table
     INSERT INTO Sales.Dim_Customer (CustomerID, CustomerName, EmailAddress)
     SELECT DISTINCT CustomerName, CustomerName, EmailAddress
     FROM [Sales].[Staging_Sales_View]
     WHERE
     NOT EXISTS (
         SELECT 1
         FROM Sales.Dim_Customer
         WHERE Sales.Dim_Customer.CustomerName = Sales.Staging_Sales_View.CustomerName
         AND Sales.Dim_Customer.EmailAddress = Sales.Staging_Sales_View.EmailAddress
     );
        
     -- Load data into the Item dimension table
     INSERT INTO Sales.Dim_Item (ItemID, Item)
     SELECT DISTINCT Item, Item
     FROM [Sales].[Staging_Sales_View]
     WHERE 
    NOT EXISTS (
         SELECT 1
         FROM Sales.Dim_Item
         WHERE Sales.Dim_Item.Item = Sales.Staging_Sales_View.Item
     );
        
     -- Load data into the Sales fact table
     INSERT INTO Sales.Fact_Sales (CustomerID, ItemID, SalesOrderNumber, SalesOrderLineNumber, OrderDate, Quantity, TaxAmount, UnitPrice)
     SELECT CustomerName, Item, SalesOrderNumber, CAST(SalesOrderLineNumber AS INT), CAST(OrderDate AS DATE), CAST(Quantity AS INT), CAST(TaxAmount AS FLOAT), CAST(UnitPrice AS FLOAT)
     FROM [Sales].[Staging_Sales_View];
 END