/*************************************************/
/* PURPOSE: My cool script for working out stuff */
/* AUTHOR: Felix Oppenheimer					 */
/* DATE CREATED: 2016-08-18						 */
--------------------------------------------------
/* CHANGED FILTER TO GET RID OF PRODUCT NUMBER	 */
/* BY FO ON 2016-08-19 - JIRA-2108				 */
/*************************************************/

use AdventureWorks2014;
go
select 
	 [productID] as [ProductID]
	,[Name] as [Product Name]
	,reverse(substring(Reverse([Name]),2,3))
	,[Weight] as [Product Weight]
	,[Class] as [Product Class]
	,[StandardCost]
	,[ListPrice]
	,[ListPrice] - [StandardCost] as Profit
from [Production].[Product];
go