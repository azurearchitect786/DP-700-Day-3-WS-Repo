-- Auto Generated (Do not modify) 400BBBAF3FF0E93D93AE91DB0F637F7E09335A42EE33031441AD2762041DADAE
CREATE VIEW Sales.Staging_Sales_View_Trans
AS
SELECT Item,Sum(UnitPrice*Quantity) as Total_Sales FROM [demolkhforwhserving].[dbo].[staging_sales] group by Item;