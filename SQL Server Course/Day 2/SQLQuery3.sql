/**********************************/
/* UNINON - removes duplicates	  */
/* UNION ALL - displays all rows  */
/* EXCEPT - displays differences  */
/* INTERSECT - displays matches	  */
/**********************************/

use AdventureWorks2014

select 
	 BusinessEntityID
	,FirstName
	,LastName

from Person.Person -- 19,972
union all
select
	 ProductID
	,Name
	,ProductNumber

from Production.Product -- 504
