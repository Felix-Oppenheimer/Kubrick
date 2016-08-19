/*********************/
/* JOINS			 */
/* DATE FORMATS		 */
/*					 */
/*********************/
use AdventureWorks2014

select
	 p.[Name] [Product Name]
	,p.[ListPrice]
	,p.[StandardCost]
	,cast(p.[StandardCost] as decimal(10,2)) [Standard Cost Rounded]
	,p.[Color]
	,sod.[CarrierTrackingNumber]
	,sod.[OrderQty]
	,sod.[UnitPrice]
	,sod.[LineTotal]
	,CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(soh.[OrderDate])-1),soh.[OrderDate]),101) AS [Date Value]
	,cast(soh.[OrderDate] as date)[Order Date]
	,cast(soh.[ShipDate]  as date)[Ship Date]
	,cast(soh.[DueDate] as date)[Due Date]
	,datename(yy,soh.[OrderDate]) [Order Year]
	,datename(qq,soh.[OrderDate]) [Order Quarter]
	,datename(mm,soh.[OrderDate]) [Order Month]
	,datepart(mm,soh.[OrderDate]) [Order Month]
	,convert(date,soh.[OrderDate],3)		--2013-06-01
	
from [Sales].[SalesOrderDetail] sod with (nolock)
join [Production].[Product] p with (nolock)
	on sod.[ProductID] = p.[ProductID]
join [Sales].[SalesOrderHeader] soh with (nolock)
	on sod.[SalesOrderID] = soh.[SalesOrderID]

where 1=1