/*********************/
/*					 */
/*		WINDOW		 */
/*					 */
/*********************/

select
	 [Color]
	,[Name]
	,[ProductNumber]
	,[Weight]
	,count(*) over (partition by [Color]) [Count By Color]
	,count(*) over (partition by [Weight]) [Count By Weight]
from production.product

where 1=1
	 and [Color] is not null 
	 and [weight] is not null

order by
	 [Count By Weight] desc
