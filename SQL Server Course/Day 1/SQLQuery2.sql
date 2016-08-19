use AdventureWorks2014
go
select
	 [BusinessEntityID]
	,[EmailAddressID]
	,[EmailAddress]
	,substring([EmailAddress],0,charindex('@',[EmailAddress])) [Beginning]
	,substring([EmailAddress],charindex('@',[EmailAddress])+1,len([EmailAddress])) [End] 
	,len(substring([EmailAddress],charindex('@',[EmailAddress])+1,len([EmailAddress])))
	,datalength(substring([EmailAddress],charindex('@',[EmailAddress])+1,len([EmailAddress])))
	,Replace([EmailAddress],'@','XXXX')
from [Person].[EmailAddress]