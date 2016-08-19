/*********************/
/*					 */
/*		COUNT		 */
/*					 */
/*********************/

select
	 p.ProductNumber
	,count(*) SaleCount

from [Sales].[SalesOrderDetail] sod with (nolock)
join [Production].[Product] p with (nolock)
	on sod.[ProductID] = p.[ProductID]
join [Sales].[SalesOrderHeader] soh with (nolock)
	on sod.[SalesOrderID] = soh.[SalesOrderID]

where 1=1
	and p.Color = 'Red'
	 
group by
	 p.ProductNumber

Having 
	 count(*) >= 500