/*********************/
/*					 */
/*	 LAG AND LEAD    */
/*					 */
/*********************/

select
	 [SalesOrderID]
	,[SalesOrderDetailID]
	,lead([SalesOrderDetailID]) over (partition by [SalesOrderID] order by [SalesOrderDetailID] asc) Lead
	,lag([SalesOrderDetailID]) over (partition by [SalesOrderID] order by [SalesOrderDetailID] asc) Lag
	,first_value([SalesOrderDetailID]) over (partition by [SalesOrderID] order by [SalesOrderDetailID] asc) [First Value]
	,last_value([SalesOrderDetailID]) over (partition by [SalesOrderID] order by [SalesOrderDetailID] asc rows between unbounded preceding and unbounded following) [Last Value]
	,[ProductID]
	,[LineTotal]
from [Sales].[SalesOrderDetail]

order by [SalesOrderID], [SalesOrderDetailID]	-- can put order by 1, 2

