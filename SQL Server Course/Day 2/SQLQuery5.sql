/***********************************/
/*			AGGREGATIONS		   */
/* COUNT						   */
/* SUM  						   */
/* AVG 							   */
/* MIN							   */
/* MAX							   */
/* STDEV						   */
/* VAR							   */
/* VARP		  					   */
/***********************************/




select
	 cast(avg(sod.LineTotal) as decimal(10,2)) [Avg Spend]
	--,cast(stdev(sod.LineTotal) as decimal(10,2)) [Std Dev Spend]
	--,cast(min(sod.LineTotal) as decimal(10,2)) [Min Spend]
	--,cast(max(sod.LineTotal) as decimal(10,2)) [Max Spend]
	,datename(yy,soh.[OrderDate]) + datename(qq,soh.[OrderDate]) [Order Quarter]

from [Sales].[SalesOrderDetail] sod with (nolock)
join [Production].[Product] p with (nolock)
	on sod.[ProductID] = p.[ProductID]
join [Sales].[SalesOrderHeader] soh with (nolock)
	on sod.[SalesOrderID] = soh.[SalesOrderID]

group by
	 datename(yy,soh.[OrderDate]) + datename(qq,soh.[OrderDate])